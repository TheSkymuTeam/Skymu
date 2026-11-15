r"""Translate a PHP script into x86-64 assembly.

PHP has no IL either. Instead of embedding the source or shipping an
interpreter, this module lowers the script's statements and expressions to
native code:

    function name(...)      ->  php_Function_name
    $x = expr               ->  store into a php_var_* cell
    if / foreach / return   ->  real branches and loops
    array(...), $a[k]       ->  calls into the array runtime
    builtins                ->  calls into shim/php.c

Values are `pv` cells supplied by the shim (null, bool, int, double, string,
ordered array, closure). A request is executed by `php_execute`, which installs
a longjmp target for `exit` and records the status and body instead of speaking
HTTP. Everything the script computes is computed by the generated code; the
shim only provides primitive operations.

    python3 -m il2asm.php archive/UserServer/server.php -o UserServer
"""

import argparse
import re
import sys
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

ARG_REGS = ["%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9"]

# name -> (shim entry, argument count, result kind)
BUILTINS: Dict[str, Tuple[str, int, str]] = {
    "http_response_code": ("php_http_code", 1, "void"),
    "header": ("php_header", 1, "void"),
    "json_encode": ("php_json_encode", 2, "pv"),
    "json_decode": ("php_json_decode", 2, "pv"),
    "is_array": ("php_is_array", 1, "bool"),
    "is_string": ("php_is_string", 1, "bool"),
    "is_bool": ("php_is_bool", 1, "bool"),
    "is_int": ("php_is_int", 1, "bool"),
    "is_double": ("php_is_double", 1, "bool"),
    "file_get_contents": ("php_file_get", 1, "pv"),
    "fopen": ("php_fopen", 2, "pv"),
    "fclose": ("php_fclose", 1, "pv"),
    "flock": ("php_flock", 2, "pv"),
    "rewind": ("php_rewind", 1, "pv"),
    "stream_get_contents": ("php_stream_get", 1, "pv"),
    "ftruncate": ("php_ftruncate", 2, "pv"),
    "fwrite": ("php_fwrite", 2, "pv"),
    "fflush": ("php_fflush", 1, "pv"),
    "is_dir": ("php_is_dir", 1, "pv"),
    "mkdir": ("php_mkdir", 3, "pv"),
    "dirname": ("php_dirname", 1, "pv"),
    "time": ("php_time", 0, "pv"),
    "microtime": ("php_microtime", 1, "pv"),
    "count": ("php_count_pv", 1, "pv"),
    "strlen": ("php_strlen", 1, "pv"),
    "substr": ("php_substr", 2, "pv"),
    "strpos": ("php_strpos", 2, "pv"),
    "stripos": ("php_stripos", 2, "pv"),
    "trim": ("php_trim", 1, "pv"),
    "rtrim": ("php_rtrim", 2, "pv"),
    "bin2hex": ("php_bin2hex", 1, "pv"),
    "random_bytes": ("php_random_bytes", 1, "pv"),
    "parse_url": ("php_parse_url_path", 1, "pv"),
    "array_key_exists": ("php_array_key_exists", 2, "pv"),
}

CONSTANTS: Dict[str, Any] = {
    "PHP_URL_PATH": 5,
    "JSON_UNESCAPED_SLASHES": 64,
    "LOCK_EX": 2,
    "LOCK_UN": 3,
    "true": True,
    "false": False,
    "null": None,
}


def mangle(name: str) -> str:
    cleaned = "".join(ch if ch.isalnum() else "_" for ch in name)
    while "__" in cleaned:
        cleaned = cleaned.replace("__", "_")
    return cleaned.strip("_") or "anon"


# ------------------------------------------------------------------ lexer
OPERS = ["===", "!==", "==", "!=", "<=", ">=", "&&", "||", "=>", "++", "--",
         ".=", "+=", "-=", "::", "<?php", "?>"]
SINGLE = "=<>+-.!?:,;(){}[]&|"


class Tok:
    __slots__ = ("kind", "value", "line")

    def __init__(self, kind: str, value: Any, line: int):
        self.kind, self.value, self.line = kind, value, line

    def __repr__(self) -> str:
        return f"{self.kind}:{self.value!r}"


def lex(src: str) -> List[Tok]:
    out: List[Tok] = []
    i, n, line = 0, len(src), 1
    while i < n:
        c = src[i]
        if c == "\n":
            line += 1
            i += 1
            continue
        if c.isspace():
            i += 1
            continue
        if src.startswith("<?php", i):
            i += 5
            continue
        if src.startswith("?>", i):
            i += 2
            continue
        if src.startswith("/*", i):
            j = src.find("*/", i + 2)
            j = n if j < 0 else j + 2
            line += src.count("\n", i, j)
            i = j
            continue
        if src.startswith("//", i) or c == "#":
            j = src.find("\n", i)
            i = n if j < 0 else j
            continue
        if c == "$":
            j = i + 1
            while j < n and (src[j].isalnum() or src[j] == "_"):
                j += 1
            out.append(Tok("var", src[i + 1:j], line))
            i = j
            continue
        if c in "\"'":
            quote = c
            j = i + 1
            buf: List[str] = []
            while j < n and src[j] != quote:
                if src[j] == "\\" and j + 1 < n:
                    e = src[j + 1]
                    buf.append({"n": "\n", "t": "\t", "r": "\r",
                                "\\": "\\", "'": "'", '"': '"',
                                "$": "$"}.get(e, e))
                    j += 2
                else:
                    buf.append(src[j])
                    j += 1
            out.append(Tok("str", "".join(buf), line))
            i = j + 1
            continue
        if c.isdigit():
            j = i
            while j < n and (src[j].isdigit() or src[j] == "."):
                j += 1
            text = src[i:j]
            out.append(Tok("num", float(text) if "." in text else int(text), line))
            i = j
            continue
        if c.isalpha() or c == "_":
            j = i
            while j < n and (src[j].isalnum() or src[j] == "_"):
                j += 1
            out.append(Tok("id", src[i:j], line))
            i = j
            continue
        for op in OPERS:
            if src.startswith(op, i):
                out.append(Tok("op", op, line))
                i += len(op)
                break
        else:
            if c in SINGLE:
                out.append(Tok("op", c, line))
                i += 1
            else:
                raise SyntaxError(f"line {line}: unexpected character {c!r}")
    out.append(Tok("eof", None, line))
    return out


# ----------------------------------------------------------------- parser
class Parser:
    def __init__(self, toks: List[Tok]):
        self.t = toks
        self.i = 0
        self.closures: List[Dict[str, Any]] = []
        self.funcs: Dict[str, Dict[str, Any]] = {}

    def peek(self, k: int = 0) -> Tok:
        return self.t[min(self.i + k, len(self.t) - 1)]

    def next(self) -> Tok:
        tok = self.t[self.i]
        self.i += 1
        return tok

    def at(self, value: str) -> bool:
        tok = self.peek()
        return tok.value == value and tok.kind in ("op", "id")

    def accept(self, value: str) -> bool:
        if self.at(value):
            self.i += 1
            return True
        return False

    def expect(self, value: str) -> Tok:
        if not self.at(value):
            tok = self.peek()
            raise SyntaxError(f"line {tok.line}: expected {value!r}, got {tok.value!r}")
        return self.next()

    # ------------------------------------------------------------- program
    def program(self) -> List[Any]:
        body: List[Any] = []
        while self.peek().kind != "eof":
            body.append(self.statement())
        return body

    def block(self) -> List[Any]:
        self.expect("{")
        body: List[Any] = []
        while not self.at("}"):
            if self.peek().kind == "eof":
                raise SyntaxError("unterminated block")
            body.append(self.statement())
        self.expect("}")
        return body

    def statement_or_block(self) -> List[Any]:
        if self.at("{"):
            return self.block()
        return [self.statement()]

    def statement(self) -> Any:
        tok = self.peek()
        if tok.kind == "id":
            if tok.value == "function" and self.peek(1).kind == "id":
                return self.function_decl()
            if tok.value == "if":
                return self.if_stmt()
            if tok.value == "foreach":
                return self.foreach_stmt()
            if tok.value == "return":
                self.next()
                expr = None if self.at(";") else self.expression()
                self.accept(";")
                return ("return", expr)
            if tok.value == "exit":
                self.next()
                if self.at("("):
                    self.next()
                    if not self.at(")"):
                        self.expression()
                    self.expect(")")
                self.accept(";")
                return ("exit",)
            if tok.value == "continue":
                self.next()
                self.accept(";")
                return ("continue",)
            if tok.value == "echo":
                self.next()
                expr = self.expression()
                self.accept(";")
                return ("echo", expr)
        if self.at("{"):
            return ("block", self.block())

        expr = self.expression()
        if self.peek().kind == "op" and self.peek().value in ("=", ".=", "+=", "-="):
            op = self.next().value
            value = self.expression()
            self.accept(";")
            if op != "=":
                value = ("bin", op[0], expr, value)
            return ("assign", expr, value)
        if self.at("++") or self.at("--"):
            op = self.next().value
            self.accept(";")
            return ("inc", expr, 1 if op == "++" else -1)
        self.accept(";")
        return ("exprstmt", expr)

    def function_decl(self) -> Any:
        self.expect("function")
        name = self.next().value
        params = self.params()
        body = self.block()
        node = ("func", name, params, body)
        self.funcs[name] = {"params": params}
        return node

    def params(self) -> List[Tuple[str, Any, bool]]:
        self.expect("(")
        out: List[Tuple[str, Any, bool]] = []
        while not self.at(")"):
            byref = self.accept("&")
            if self.peek().kind != "var":
                raise SyntaxError(f"expected parameter at line {self.peek().line}")
            name = self.next().value
            default = None
            if self.accept("="):
                default = self.expression()
            out.append((name, default, byref))
            if not self.accept(","):
                break
        self.expect(")")
        return out

    def if_stmt(self) -> Any:
        self.expect("if")
        self.expect("(")
        cond = self.expression()
        self.expect(")")
        body = self.statement_or_block()
        chain = [(cond, body)]
        els: List[Any] = []
        while True:
            if self.at("elseif"):
                self.next()
                self.expect("(")
                c = self.expression()
                self.expect(")")
                b = self.statement_or_block()
                chain.append((c, b))
                continue
            if self.at("else"):
                self.next()
                if self.at("if"):
                    nested = self.if_stmt()
                    els = [nested]
                else:
                    els = self.statement_or_block()
                break
            break
        return ("if", chain, els)

    def foreach_stmt(self) -> Any:
        self.expect("foreach")
        self.expect("(")
        subject = self.expression()
        self.expect("as")
        self.accept("&")
        if self.peek().kind != "var":
            raise SyntaxError(f"expected loop variable at line {self.peek().line}")
        var = self.next().value
        key = None
        if self.accept("=>"):
            key = var
            self.accept("&")
            if self.peek().kind != "var":
                raise SyntaxError("expected value variable")
            var = self.next().value
        self.expect(")")
        body = self.statement_or_block()
        return ("foreach", subject, key, var, body)

    # ---------------------------------------------------------- expressions
    def expression(self) -> Any:
        return self.ternary()

    def ternary(self) -> Any:
        cond = self.binary(0)
        if self.accept("?"):
            a = self.expression()
            self.expect(":")
            b = self.expression()
            return ("tern", cond, a, b)
        return cond

    LEVELS = [("||",), ("&&",), ("===", "!==", "==", "!="),
              ("<", ">", "<=", ">="), ("+", "-"), (".",)]

    def binary(self, level: int) -> Any:
        if level == len(self.LEVELS):
            return self.unary()
        left = self.binary(level + 1)
        while self.peek().kind == "op" and self.peek().value in self.LEVELS[level]:
            op = self.next().value
            right = self.binary(level + 1)
            left = ("bin", op, left, right)
        return left

    def unary(self) -> Any:
        if self.accept("!"):
            return ("not", self.unary())
        if self.accept("-"):
            return ("neg", self.unary())
        if self.accept("&"):
            return self.unary()
        return self.postfix()

    def postfix(self) -> Any:
        node = self.primary()
        while True:
            if self.accept("["):
                key = None if self.at("]") else self.expression()
                self.expect("]")
                node = ("idx", node, key)
                continue
            if self.at("("):
                args = self.call_args()
                node = ("ccall", node, args)
                continue
            break
        return node

    def call_args(self) -> List[Any]:
        self.expect("(")
        args: List[Any] = []
        while not self.at(")"):
            args.append(self.expression())
            if not self.accept(","):
                break
        self.expect(")")
        return args

    def primary(self) -> Any:
        tok = self.peek()
        if tok.kind == "num":
            self.next()
            return ("lit", tok.value)
        if tok.kind == "str":
            self.next()
            return ("lit", tok.value)
        if tok.kind == "var":
            self.next()
            return ("var", tok.value)
        if tok.kind == "id":
            name = tok.value
            if name == "function":
                return self.closure()
            if name == "array" and self.peek(1).value == "(":
                self.next()
                return self.array_literal()
            self.next()
            if self.at("("):
                args = self.call_args()
                if name in ("isset", "empty", "unset", "define"):
                    return (name, args)
                return ("call", name, args)
            if name in CONSTANTS:
                return ("const", name)
            return ("const", name)
        if tok.value == "(":
            self.next()
            expr = self.expression()
            self.expect(")")
            return expr
        raise SyntaxError(f"line {tok.line}: unexpected token {tok.value!r}")

    def array_literal(self) -> Any:
        self.expect("(")
        items: List[Tuple[Optional[Any], Any]] = []
        while not self.at(")"):
            first = self.expression()
            if self.accept("=>"):
                items.append((first, self.expression()))
            else:
                items.append((None, first))
            if not self.accept(","):
                break
        self.expect(")")
        return ("array", items)

    def closure(self) -> Any:
        self.expect("function")
        params = self.params()
        uses: List[str] = []
        if self.at("use"):
            self.next()
            self.expect("(")
            while not self.at(")"):
                self.accept("&")
                if self.peek().kind != "var":
                    raise SyntaxError("expected captured variable")
                uses.append(self.next().value)
                if not self.accept(","):
                    break
            self.expect(")")
        body = self.block()
        node = ("closure", params, uses, body, len(self.closures))
        self.closures.append({"index": node[4], "params": params,
                              "uses": uses, "body": body})
        return node


# ------------------------------------------------------------------ emitter
class Ctx:
    def __init__(self, ns: str, params: List[str],
                 captures: Optional[Dict[str, int]] = None,
                 is_closure: bool = False):
        self.ns = ns
        self.params = params
        self.captures = captures or {}
        self.is_closure = is_closure
        self.ret = ""
        self.loops: List[str] = []


class Emitter:
    def __init__(self, program: List[Any], signatures: Dict[str, Dict[str, Any]],
                 closures: List[Dict[str, Any]]):
        self.program = program
        self.signatures = signatures
        self.closures = closures
        self.text: List[str] = []
        self.rodata: List[str] = []
        self.strings: Dict[str, str] = {}
        self.vars: List[str] = []
        self.n = 0
        self.consts: Dict[str, Any] = dict(CONSTANTS)

    # ------------------------------------------------------------- helpers
    def label(self, kind: str) -> str:
        self.n += 1
        return f".Lphp_{kind}_{self.n}"

    def string(self, text: str) -> str:
        if text not in self.strings:
            label = f".Lphp_s{len(self.strings)}"
            self.strings[text] = label
            self.rodata.append(f"{label}:")
            self.rodata.append(f'    .asciz "{gas_string(text)}"')
        return self.strings[text]

    def var_cell(self, ctx: Ctx, name: str) -> str:
        sym = f"php_var_{mangle(ctx.ns)}_{mangle(name)}"
        if sym not in self.vars:
            self.vars.append(sym)
        return sym

    def tmp_cell(self, ctx: Ctx, kind: str) -> str:
        sym = f"php_tmp_{mangle(ctx.ns)}_{kind}_{self.n}"
        if sym not in self.vars:
            self.vars.append(sym)
        return sym

    def load_var(self, ctx: Ctx, name: str) -> None:
        if name in ctx.captures:
            self.text.append(f"    mov php_env_{mangle(ctx.ns)}(%rip), %rdi")
            self.text.append(f"    mov ${ctx.captures[name]}, %esi")
            self.text.append("    call php_env_get")
            return
        self.text.append(f"    mov {self.var_cell(ctx, name)}(%rip), %rax")

    def store_var(self, ctx: Ctx, name: str) -> None:
        self.text.append(f"    mov %rax, {self.var_cell(ctx, name)}(%rip)")

    def const_value(self, node: Any) -> Any:
        kind = node[0]
        if kind == "lit":
            return node[1]
        if kind == "const":
            name = node[1]
            if name == "__DIR__":
                return "."
            if name in self.consts:
                return self.consts[name]
        if kind == "bin" and node[1] == ".":
            a, b = self.const_value(node[2]), self.const_value(node[3])
            if isinstance(a, str) and isinstance(b, str):
                return a + b
        return None

    # --------------------------------------------------------- expressions
    def expr(self, node: Any, ctx: Ctx) -> None:
        kind = node[0]

        if kind == "lit":
            value = node[1]
            if value is None:
                self.text.append("    call php_null")
            elif value is True:
                self.text.append("    call php_true")
            elif value is False:
                self.text.append("    call php_false")
            elif isinstance(value, str):
                self.text.append(f"    lea {self.string(value)}(%rip), %rdi")
                self.text.append("    call php_str")
            elif isinstance(value, float):
                import struct
                bits = struct.unpack("<Q", struct.pack("<d", value))[0]
                self.text.append(f"    movabs ${bits}, %rax")
                self.text.append("    movq %rax, %xmm0")
                self.text.append("    call php_double")
            else:
                self.text.append(f"    mov ${value}, %rdi")
                self.text.append("    call php_int")
            return

        if kind == "const":
            name = node[1]
            value = self.const_value(node)
            self.expr(("lit", value), ctx)
            return

        if kind == "var":
            self.load_var(ctx, node[1])
            return

        if kind == "idx":
            base, key = node[1], node[2]
            if base[0] == "var" and base[1] == "_SERVER":
                self.expr(key, ctx)
                self.text.append("    mov %rax, %rdi")
                self.text.append("    call php_server")
                return
            if base[0] == "var" and base[1] == "_GET":
                self.expr(key, ctx)
                self.text.append("    mov %rax, %rdi")
                self.text.append("    call php_get")
                return
            self.text.append("    sub $16, %rsp")
            self.expr(base, ctx)
            self.text.append("    mov %rax, 0(%rsp)")
            self.expr(key, ctx)
            self.text.append("    mov %rax, %rsi")
            self.text.append("    mov 0(%rsp), %rdi")
            self.text.append("    call php_arr_get")
            self.text.append("    add $16, %rsp")
            return

        if kind == "array":
            self.text.append("    sub $32, %rsp")
            self.text.append("    call php_arr")
            self.text.append("    mov %rax, 0(%rsp)")
            for key, value in node[1]:
                if key is None:
                    self.expr(value, ctx)
                    self.text.append("    mov %rax, %rsi")
                    self.text.append("    mov 0(%rsp), %rdi")
                    self.text.append("    call php_arr_push")
                else:
                    self.expr(key, ctx)
                    self.text.append("    mov %rax, 8(%rsp)")
                    self.expr(value, ctx)
                    self.text.append("    mov %rax, %rdx")
                    self.text.append("    mov 8(%rsp), %rsi")
                    self.text.append("    mov 0(%rsp), %rdi")
                    self.text.append("    call php_arr_set")
            self.text.append("    mov 0(%rsp), %rax")
            self.text.append("    add $32, %rsp")
            return

        if kind == "call":
            self.emit_call(node[1], node[2], ctx)
            return

        if kind == "ccall":
            self.text.append("    sub $16, %rsp")
            self.expr(node[1], ctx)
            self.text.append("    mov %rax, 0(%rsp)")
            self.expr(node[2][0], ctx)
            self.text.append("    mov %rax, %rsi")
            self.text.append("    mov 0(%rsp), %rdi")
            self.text.append("    call php_call1")
            self.text.append("    add $16, %rsp")
            return

        if kind == "isset":
            node = node[1][0]
            if node[0] == "idx" and not (node[1][0] == "var" and node[1][1] in ("_SERVER", "_GET")):
                base, key = node[1], node[2]
                self.text.append("    sub $16, %rsp")
                self.expr(base, ctx)
                self.text.append("    mov %rax, 0(%rsp)")
                self.expr(key, ctx)
                self.text.append("    mov %rax, %rsi")
                self.text.append("    mov 0(%rsp), %rdi")
                self.text.append("    call php_arr_isset")
                self.text.append("    add $16, %rsp")
                return
            self.expr(node, ctx)
            self.text.append("    mov %rax, %rdi")
            self.text.append("    call php_isset_pv")
            return

        if kind == "empty":
            self.expr(node[1][0], ctx)
            self.text.append("    mov %rax, %rdi")
            self.text.append("    call php_empty_pv")
            return

        if kind == "define":
            self.text.append("    call php_null")
            return

        if kind == "unset":
            target = node[1][0]
            if target[0] == "var":
                self.text.append("    call php_null")
                self.store_var(ctx, target[1])
            return

        if kind == "not":
            self.expr(node[1], ctx)
            self.text.append("    mov %rax, %rdi")
            self.text.append("    call php_not")
            return

        if kind == "neg":
            self.expr(node[1], ctx)
            self.text.append("    mov %rax, %rsi")
            self.text.append("    mov $0, %edi")
            self.text.append("    call php_int")
            self.text.append("    mov %rax, %rdi")
            self.text.append("    call php_sub")
            return

        if kind == "tern":
            alt = self.label("tern_alt")
            end = self.label("tern_end")
            self.cond_jump(node[1], alt, ctx)
            self.expr(node[2], ctx)
            self.text.append(f"    jmp {end}")
            self.text.append(f"{alt}:")
            self.expr(node[3], ctx)
            self.text.append(f"{end}:")
            return

        if kind == "bin":
            self.binary(node, ctx)
            return

        if kind == "closure":
            self.closure_value(node, ctx)
            return

        raise AssertionError(f"cannot emit expression {kind}")

    def binary(self, node: Any, ctx: Ctx) -> None:
        op = node[1]
        if op in ("&&", "||"):
            end = self.label("logic_end")
            short = self.label("logic_short")
            self.expr(node[2], ctx)
            self.text.append("    mov %rax, %rdi")
            self.text.append("    call php_truthy")
            self.text.append("    test %eax, %eax")
            self.text.append(f"    {'jz' if op == '&&' else 'jnz'} {short}")
            self.expr(node[3], ctx)
            self.text.append("    mov %rax, %rdi")
            self.text.append("    call php_truthy")
            self.text.append("    test %eax, %eax")
            self.text.append(f"    {'jz' if op == '&&' else 'jnz'} {short}")
            self.text.append(f"    call {'php_true' if op == '&&' else 'php_false'}")
            self.text.append(f"    jmp {end}")
            self.text.append(f"{short}:")
            self.text.append(f"    call {'php_false' if op == '&&' else 'php_true'}")
            self.text.append(f"{end}:")
            return

        helpers = {
            ".": "php_concat", "+": "php_add", "-": "php_sub",
            "==": "php_eq", "!=": "php_ne",
            "===": "php_ident", "!==": "php_nident",
            ">": "php_gt", "<": "php_lt", ">=": "php_ge", "<=": "php_le",
        }
        self.text.append("    sub $16, %rsp")
        self.expr(node[2], ctx)
        self.text.append("    mov %rax, 0(%rsp)")
        self.expr(node[3], ctx)
        self.text.append("    mov %rax, %rsi")
        self.text.append("    mov 0(%rsp), %rdi")
        self.text.append(f"    call {helpers[op]}")
        self.text.append("    add $16, %rsp")

    def cond_jump(self, node: Any, target: str, ctx: Ctx) -> None:
        self.expr(node, ctx)
        self.text.append("    mov %rax, %rdi")
        self.text.append("    call php_truthy")
        self.text.append("    test %eax, %eax")
        self.text.append(f"    jz {target}")

    def closure_value(self, node: Any, ctx: Ctx) -> None:
        params, uses, body, index = node[1], node[2], node[3], node[4]
        if not uses:
            self.text.append(f"    lea php_closure_{index}(%rip), %rdi")
            self.text.append("    xor %esi, %esi")
            self.text.append("    call php_callable")
            return
        for name in uses:
            self.load_var(ctx, name)
            self.text.append("    mov %rax, %rdi")
        self.text.append(f"    call php_env{len(uses)}")
        self.text.append("    mov %rax, %rsi")
        self.text.append(f"    lea php_closure_{index}(%rip), %rdi")
        self.text.append("    call php_callable")

    # ---------------------------------------------------------------- calls
    def emit_call(self, name: str, args: List[Any], ctx: Ctx) -> None:
        if name in BUILTINS:
            shim, arity, kind = BUILTINS[name]
            size = self.emit_args(args, max(arity, 0), ctx)
            self.text.append(f"    call {shim}")
            self.text.append(f"    add ${size}, %rsp")
            if kind == "bool":
                self.text.append("    mov %eax, %edi")
                self.text.append("    call php_bool")
            elif kind == "void":
                self.text.append("    call php_null")
            return

        if name == "define":
            return

        sig = self.signatures.get(name)
        params = sig["params"] if sig else []
        count = len(params)
        call_args = list(args)
        while len(call_args) < count:
            default = params[len(call_args)][1]
            call_args.append(default if default is not None else ("lit", None))
        size = self.emit_args(call_args, count, ctx)
        self.text.append(f"    call php_Function_{mangle(name)}")
        self.text.append(f"    add ${size}, %rsp")

    def emit_args(self, args: List[Any], count: int, ctx: Ctx) -> int:
        slots = max(1, count)
        size = ((slots * 8 + 15) // 16) * 16
        self.text.append(f"    sub ${size}, %rsp")
        for i in range(count):
            node = args[i] if i < len(args) else ("lit", None)
            self.expr(node, ctx)
            self.text.append(f"    mov %rax, {i * 8}(%rsp)")
        for i in range(min(count, len(ARG_REGS))):
            self.text.append(f"    mov {i * 8}(%rsp), {ARG_REGS[i]}")
        return size

    # ------------------------------------------------------------- statements
    def stmt(self, node: Any, ctx: Ctx) -> None:
        kind = node[0]

        if kind == "block":
            for s in node[1]:
                self.stmt(s, ctx)
            return

        if kind == "func":
            return

        if kind == "exprstmt":
            self.expr(node[1], ctx)
            return

        if kind == "echo":
            self.expr(node[1], ctx)
            self.text.append("    mov %rax, %rdi")
            self.text.append("    call php_echo")
            return

        if kind == "assign":
            target, value = node[1], node[2]
            if target[0] == "var":
                self.expr(value, ctx)
                self.store_var(ctx, target[1])
                return
            if target[0] == "idx":
                base, key = target[1], target[2]
                self.text.append("    sub $32, %rsp")
                self.expr(base, ctx)
                self.text.append("    mov %rax, 0(%rsp)")
                if key is None:
                    self.expr(value, ctx)
                    self.text.append("    mov %rax, %rsi")
                    self.text.append("    mov 0(%rsp), %rdi")
                    self.text.append("    call php_arr_push")
                else:
                    self.expr(key, ctx)
                    self.text.append("    mov %rax, 8(%rsp)")
                    self.expr(value, ctx)
                    self.text.append("    mov %rax, %rdx")
                    self.text.append("    mov 8(%rsp), %rsi")
                    self.text.append("    mov 0(%rsp), %rdi")
                    self.text.append("    call php_arr_set")
                self.text.append("    add $32, %rsp")
                return
            raise AssertionError("bad assignment target")

        if kind == "inc":
            target, delta = node[1], node[2]
            if target[0] == "var":
                self.load_var(ctx, target[1])
                self.text.append("    sub $16, %rsp")
                self.text.append("    mov %rax, 0(%rsp)")
                self.text.append(f"    mov ${delta}, %rdi")
                self.text.append("    call php_int")
                self.text.append("    mov %rax, %rsi")
                self.text.append("    mov 0(%rsp), %rdi")
                self.text.append("    call php_add")
                self.text.append("    add $16, %rsp")
                self.store_var(ctx, target[1])
                return
            raise AssertionError("bad increment target")

        if kind == "if":
            end = self.label("if_end")
            for cond, body in node[1]:
                nxt = self.label("if_next")
                self.cond_jump(cond, nxt, ctx)
                for s in body:
                    self.stmt(s, ctx)
                self.text.append(f"    jmp {end}")
                self.text.append(f"{nxt}:")
            for s in node[2]:
                self.stmt(s, ctx)
            self.text.append(f"{end}:")
            return

        if kind == "foreach":
            subject, key, var, body = node[1], node[2], node[3], node[4]
            arr = self.tmp_cell(ctx, "arr")
            it = self.tmp_cell(ctx, "iter")
            loop = self.label("each")
            end = self.label("each_end")
            self.expr(subject, ctx)
            self.text.append(f"    mov %rax, {arr}(%rip)")
            self.text.append("    mov %rax, %rdi")
            self.text.append("    call php_iter_begin")
            self.text.append(f"    mov %rax, {it}(%rip)")
            self.text.append(f"{loop}:")
            self.text.append(f"    mov {it}(%rip), %rdi")
            self.text.append("    call php_iter_next")
            self.text.append("    test %rax, %rax")
            self.text.append(f"    jz {end}")
            self.text.append("    mov (%rax), %rax")
            self.store_var(ctx, var)
            ctx.loops.append(loop)
            for s in body:
                self.stmt(s, ctx)
            ctx.loops.pop()
            self.text.append(f"    jmp {loop}")
            self.text.append(f"{end}:")
            return

        if kind == "return":
            if node[1] is not None:
                self.expr(node[1], ctx)
            else:
                self.text.append("    call php_null")
            self.text.append(f"    jmp {ctx.ret}")
            return

        if kind == "exit":
            self.text.append("    call php_exit")
            return

        if kind == "continue":
            self.text.append(f"    jmp {ctx.loops[-1]}")
            return

        raise AssertionError(f"cannot emit statement {kind}")

    # --------------------------------------------------------------- bodies
    def prologue(self, sym: str) -> None:
        self.text.append(f".globl {sym}")
        self.text.append(f".type {sym}, @function")
        self.text.append(f"{sym}:")
        self.text.append("    push %rbp")
        self.text.append("    mov %rsp, %rbp")
        self.text.append("    push %rbx")
        self.text.append("    push %r12")

    def epilogue(self, sym: str, ret: str) -> None:
        self.text.append(f"{ret}:")
        self.text.append("    pop %r12")
        self.text.append("    pop %rbx")
        self.text.append("    pop %rbp")
        self.text.append("    ret")
        self.text.append(f".size {sym}, .-{sym}")
        self.text.append("")

    def emit_function(self, name: str, params: List[Any], body: List[Any]) -> None:
        sym = f"php_Function_{mangle(name)}"
        ctx = Ctx(name, [p[0] for p in params])
        ctx.ret = self.label("ret")
        self.prologue(sym)
        for i, (pname, default, byref) in enumerate(params):
            if i < len(ARG_REGS):
                self.text.append(f"    mov {ARG_REGS[i]}, {self.var_cell(ctx, pname)}(%rip)")
        for s in body:
            self.stmt(s, ctx)
        self.text.append("    call php_null")
        self.epilogue(sym, ctx.ret)

    def emit_closure(self, cl: Dict[str, Any]) -> None:
        index = cl["index"]
        sym = f"php_closure_{index}"
        ns = f"closure_{index}"
        captures = {name: i for i, name in enumerate(cl["uses"])}
        ctx = Ctx(ns, [p[0] for p in cl["params"]], captures, is_closure=True)
        ctx.ret = self.label("ret")
        self.prologue(sym)
        self.text.append(f"    mov %rdi, php_env_{mangle(ns)}(%rip)")
        env_sym = f"php_env_{mangle(ns)}"
        if env_sym not in self.vars:
            self.vars.append(env_sym)
        for i, (pname, default, byref) in enumerate(cl["params"]):
            reg = ARG_REGS[i + 1]
            self.text.append(f"    mov {reg}, {self.var_cell(ctx, pname)}(%rip)")
        for s in cl["body"]:
            self.stmt(s, ctx)
        self.text.append("    call php_null")
        self.epilogue(sym, ctx.ret)

    def emit_main(self) -> None:
        ctx = Ctx("main", [])
        ctx.ret = self.label("ret")
        self.prologue("php_main")
        for s in self.program:
            if s[0] == "func":
                continue
            self.stmt(s, ctx)
        self.text.append("    call php_null")
        self.epilogue("php_main", ctx.ret)

    def output(self) -> str:
        for name, value in self.consts.items():
            pass
        out = ["# generated by il2asm.php", "", "    .text", ""]
        out.extend(self.text)
        out.append("    .data")
        for sym in self.vars:
            out.append(f".globl {sym}")
            out.append(f"{sym}:")
            out.append("    .quad 0")
        out.append("")
        out.append("    .section .rodata")
        for name, value in self.consts.items():
            if isinstance(value, str):
                out.append(f".Lphp_const_{mangle(name)}:")
                out.append(f'    .asciz "{gas_string(value)}"')
        out.extend(self.rodata)
        out.append("")
        out.append('    .section .note.GNU-stack,"",@progbits')
        out.append("")
        return "\n".join(out)


def gas_string(text: str) -> str:
    out = []
    for ch in text:
        if ch == "\\":
            out.append("\\\\")
        elif ch == '"':
            out.append('\\"')
        elif ch == "\n":
            out.append("\\n")
        elif ch == "\t":
            out.append("\\t")
        elif 32 <= ord(ch) < 127:
            out.append(ch)
        else:
            out.extend(f"\\{b:03o}" for b in ch.encode("utf-8"))
    return "".join(out)


def translate(path: Path) -> Tuple[str, Emitter]:
    src = path.read_text(encoding="utf-8", errors="replace")
    parser = Parser(lex(src))
    program = parser.program()

    em = Emitter(program, parser.funcs, parser.closures)

    # define() is a compile-time constant in this translation.
    for stmt in program:
        if stmt[0] == "exprstmt" and stmt[1][0] == "define":
            args = stmt[1][1]
            if len(args) >= 2:
                name = em.const_value(args[0])
                if isinstance(name, str):
                    em.consts[name] = em.const_value(args[1])

    for stmt in program:
        if stmt[0] == "func":
            em.emit_function(stmt[1], stmt[2], stmt[3])
    for cl in parser.closures:
        em.emit_closure(cl)
    em.emit_main()
    return em.output(), em


def main(argv: List[str]) -> int:
    ap = argparse.ArgumentParser(prog="il2asm.php", description=__doc__)
    ap.add_argument("path", help="a .php file or a directory containing them")
    ap.add_argument("-o", "--out", default=None, help="output directory")
    args = ap.parse_args(argv)

    root = Path(args.path)
    files = [root] if root.is_file() else sorted(root.rglob("*.php"))
    if not files:
        print("no .php files found", file=sys.stderr)
        return 1

    for script in files:
        text, em = translate(script)
        out_dir = Path(args.out) if args.out else script.parent
        out_dir.mkdir(parents=True, exist_ok=True)
        dest = out_dir / (script.name + ".S")
        dest.write_text(text, encoding="utf-8")
        funcs = sum(1 for s in em.program if s[0] == "func")
        print(f"{script.name}: {funcs} functions, {len(em.closures)} closures, "
              f"{len(em.vars)} variables -> {dest}")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
