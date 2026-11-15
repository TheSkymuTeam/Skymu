"""x86-64 emitter: turns an analyzed Method into GAS assembly text."""

import re
from typing import Dict, List, Optional, Tuple

from .ir import Instruction, Method, TypeRef
from .lower import (
    ARG_REGS,
    SymbolTable,
    Unsupported,
    _arg_index,
    _local_index,
    _local_lattice,
    _target,
    mangle,
    parse_call_ref,
    sym_for,
)
from .parse import parse_type


class Emitter:
    def __init__(self, method: Method, externals: Dict[str, str],
                 symbols: Optional[SymbolTable] = None, force: bool = False):
        self.m = method
        self.symbols = symbols or SymbolTable()
        self.fn = self.symbols.register(method)
        self.externals = externals
        self.force = force
        self.out: List[str] = []
        self.depth = 0
        self.types: List[str] = []
        self.strings: List[Tuple[str, str]] = []
        self.end_label = f".L{mangle(self.fn)}_end"

        argc = method.arg_count
        self.argsz = 8 * argc
        self.locsz = 8 * len(method.locals)
        self.evalsz = 8 * max(method.max_depth, 1)
        total = 16 + self.argsz + self.locsz + self.evalsz
        self.frame = (total + 15) // 16 * 16

    # ------------------------------------------------------------- addressing
    def arg_slot(self, i: int) -> str:
        if i < len(ARG_REGS):
            return f"-{16 + 8 * i}(%rbp)"
        # Arguments past the 6-register window live in the caller's frame.
        return f"{16 + 8 * (i - len(ARG_REGS))}(%rbp)"

    def loc_slot(self, i: int) -> str:
        return f"-{16 + self.argsz + 8 * i}(%rbp)"

    def eval_slot(self, k: int) -> str:
        return f"-{16 + self.argsz + self.locsz + 8 * k}(%rbp)"

    def bp(self, disp: int) -> str:
        return f"-{disp}(%rbp)"

    # ------------------------------------------------------------- stack ops
    def push(self, reg: str, type_: str = "unk") -> None:
        self.out.append(f"    mov {reg}, {self.eval_slot(self.depth)}")
        self.depth += 1
        self.types.append(type_)

    def pop(self, reg: str) -> str:
        self.depth -= 1
        t = self.types.pop() if self.types else "unk"
        self.out.append(f"    mov {self.eval_slot(self.depth)}, {reg}")
        return t

    def peek_type(self, back: int = 0) -> str:
        i = len(self.types) - 1 - back
        return self.types[i] if 0 <= i < len(self.types) else "unk"

    def new_label(self, prefix: str, text: str) -> str:
        lbl = f".L{prefix}_{len(self.strings)}_{mangle(self.fn)}"
        self.strings.append((lbl, text))
        return lbl

    # ------------------------------------------------------------- emission
    def emit(self) -> str:
        m = self.m
        self.line(f".globl {self.fn}")
        self.line(f".type {self.fn}, @function")
        self.line(f"{self.fn}:")
        self.line("    push %rbp")
        self.line("    mov %rsp, %rbp")
        self.line(f"    sub ${self.frame}, %rsp")
        self.line("    mov %r12, -8(%rbp)")

        # Arguments past the 6-register window live in the caller's frame.
        for i in range(min(m.arg_count, len(ARG_REGS))):
            self.line(f"    mov {ARG_REGS[i]}, {self.arg_slot(i)}")

        depths = getattr(m, "_depths")
        types = getattr(m, "_types")
        idx = getattr(m, "_idx")

        for ins in m.instructions:
            d = depths[idx[ins.offset]]
            if d is None:
                continue  # unreachable
            self.depth = d
            self.types = list(types[idx[ins.offset]] or [])
            self.line(f".L{mangle(self.fn)}_{ins.offset:04x}:")
            self.instruction(ins)

        self.line(f"{self.end_label}:")
        self.epilogue()
        self.line(f".size {self.fn}, .-{self.fn}")
        return "\n".join(self.out)

    def line(self, s: str) -> None:
        self.out.append(s)

    def epilogue(self) -> None:
        self.line("    mov -8(%rbp), %r12")
        self.line("    mov %rbp, %rsp")
        self.line("    pop %rbp")
        self.line("    ret")

    def target_label(self, off: int) -> str:
        return f".L{mangle(self.fn)}_{off:04x}"

    # ------------------------------------------------------------- opcodes
    def instruction(self, ins: Instruction) -> None:
        op = ins.opcode
        base = op.split(".")[0]

        if op in ("nop", "break", "readonly."):
            return
        if op.startswith("readonly") or op.startswith("volatile") or op.startswith("constrained"):
            return

        if base in ("ldarg", "ldarga"):
            i = _arg_index(ins, self.m)
            if base == "ldarga":
                self.line(f"    lea {self.arg_slot(i)}, %rax")
                self.push("%rax", "ref")
                return
            t = _lattice_of(self.m.arg_types[i])
            self.line(f"    mov {self.arg_slot(i)}, %rax")
            if t == "i4":
                self.line("    movslq %eax, %rax")
            self.push("%rax", t)
            return

        if base == "starg":
            i = _arg_index(ins, self.m)
            self.pop("%rax")
            self.line(f"    mov %rax, {self.arg_slot(i)}")
            return

        if base in ("ldloc", "ldloca"):
            i = _local_index(ins)
            if base == "ldloca":
                self.line(f"    lea {self.loc_slot(i)}, %rax")
                self.push("%rax", "ref")
                return
            t = _local_lattice(self.m, i)
            self.line(f"    mov {self.loc_slot(i)}, %rax")
            if t == "i4":
                self.line("    movslq %eax, %rax")
            self.push("%rax", t)
            return

        if base == "stloc":
            i = _local_index(ins)
            self.pop("%rax")
            self.line(f"    mov %rax, {self.loc_slot(i)}")
            return

        if base == "ldc":
            if op.startswith("ldc.i4"):
                self.line(f"    mov ${_i4_value(op, ins.operand)}, %rax")
                self.push("%rax", "i4")
                return
            if op == "ldc.i8":
                self.line(f"    movabs ${_i8_value(ins.operand)}, %rax")
                self.push("%rax", "i8")
                return
            if op in ("ldc.r4", "ldc.r8"):
                lbl = self.new_label("D", ins.operand.rstrip("rR").strip() or "0")
                self.line(f"    movsd {lbl}(%rip), %xmm0")
                self.line("    movq %xmm0, %rax")
                self.push("%rax", "f8")
                return
            raise Unsupported(f"constant '{op}'")

        if op == "ldstr":
            text = _unquote(ins.operand)
            lbl = self.new_label("S", text)
            self.line(f"    lea {lbl}(%rip), %rdi")
            self.line(f"    mov ${len(text)}, %esi")
            self.call_external("shim_string_new", "string shim_string_new(const uint16_t*, int32)")
            self.push("%rax", "ref")
            return

        if op == "ldnull":
            self.line("    xor %eax, %eax")
            self.push("%rax", "ref")
            return

        if op == "dup":
            t = self.peek_type()
            self.line(f"    mov {self.eval_slot(self.depth - 1)}, %rax")
            self.push("%rax", t)
            return

        if op == "pop":
            self.pop("%rax")
            return

        if base in ("add", "sub", "mul", "and", "or", "xor"):
            tb = self.pop("%rcx")
            ta = self.pop("%rax")
            self.reject_float(ta, tb, base)
            wide = "i8" in (ta, tb)
            mnemonic = {"add": "add", "sub": "sub", "mul": "imul",
                        "and": "and", "or": "or", "xor": "xor"}[base]
            if wide:
                self.line(f"    {mnemonic} %rcx, %rax")
            else:
                self.line(f"    {mnemonic} %ecx, %eax")
                self.line("    movslq %eax, %rax")
            self.push("%rax", "i8" if wide else "i4")
            return

        if base in ("div", "rem"):
            unsigned = op.endswith(".un")
            tb = self.pop("%rcx")
            ta = self.pop("%rax")
            self.reject_float(ta, tb, base)
            wide = "i8" in (ta, tb)
            if wide:
                self.line("    xor %edx, %edx" if unsigned else "    cqo")
                self.line("    div %rcx" if unsigned else "    idiv %rcx")
                if base == "rem":
                    self.line("    mov %rdx, %rax")
            else:
                self.line("    xor %edx, %edx" if unsigned else "    cltd")
                self.line("    div %ecx" if unsigned else "    idiv %ecx")
                if base == "rem":
                    self.line("    mov %edx, %eax")
                self.line("    movslq %eax, %rax")
            self.push("%rax", "i8" if wide else "i4")
            return

        if base in ("shl", "shr"):
            unsigned = op.endswith(".un")
            self.pop("%rcx")
            ta = self.pop("%rax")
            wide = ta == "i8"
            if wide:
                self.line("    shl %cl, %rax" if base == "shl" else
                          ("    shr %cl, %rax" if unsigned else "    sar %cl, %rax"))
            else:
                self.line("    shl %cl, %eax" if base == "shl" else
                          ("    shr %cl, %eax" if unsigned else "    sar %cl, %eax"))
                self.line("    movslq %eax, %rax")
            self.push("%rax", ta)
            return

        if base in ("neg", "not"):
            ta = self.pop("%rax")
            self.reject_float(ta, "i4", base)
            wide = ta == "i8"
            if base == "neg":
                self.line("    neg %rax" if wide else "    neg %eax")
            else:
                self.line("    not %rax" if wide else "    not %eax")
            if not wide:
                self.line("    movslq %eax, %rax")
            self.push("%rax", ta)
            return

        if base in ("ceq", "cgt", "clt"):
            unsigned = op.endswith(".un")
            tb = self.pop("%rcx")
            ta = self.pop("%rax")
            self.reject_float(ta, tb, base)
            wide = "i8" in (ta, tb) or "ref" in (ta, tb)
            self.line("    cmp %rcx, %rax" if wide else "    cmp %ecx, %eax")
            cond = {"ceq": "e",
                    "cgt": "a" if unsigned else "g",
                    "clt": "b" if unsigned else "l"}[base]
            self.line(f"    set{cond} %al")
            self.line("    movzbl %al, %eax")
            self.push("%rax", "i4")
            return

        if base in ("br", "leave"):
            self.line(f"    jmp {self.target_label(_target(ins))}")
            return

        if base in ("brtrue", "brinst", "brfalse", "brnull", "brzero"):
            self.pop("%rax")
            self.line("    test %rax, %rax")
            j = "jne" if base in ("brtrue", "brinst") else "je"
            self.line(f"    {j} {self.target_label(_target(ins))}")
            return

        if base in ("beq", "bne", "bge", "bgt", "ble", "blt"):
            unsigned = op.endswith(".un")
            tb = self.pop("%rcx")
            ta = self.pop("%rax")
            self.reject_float(ta, tb, base)
            wide = "i8" in (ta, tb) or "ref" in (ta, tb)
            self.line("    cmp %rcx, %rax" if wide else "    cmp %ecx, %eax")
            if base in ("beq", "bne"):
                j = "je" if base == "beq" else "jne"
            else:
                s = base[1:]
                if unsigned:
                    j = "j" + {"ge": "ae", "gt": "a", "le": "be", "lt": "b"}[s]
                else:
                    j = "j" + {"ge": "ge", "gt": "g", "le": "le", "lt": "l"}[s]
            self.line(f"    {j} {self.target_label(_target(ins))}")
            return

        if base == "switch":
            targets = [int(x, 16) for x in re.findall(r"IL_([0-9a-fA-F]{4})", ins.operand)]
            self.pop("%rax")
            for i, t in enumerate(targets):
                self.line(f"    cmp ${i}, %eax")
                self.line(f"    je {self.target_label(t)}")
            return

        if op == "ret":
            if self.m.return_type.name == "void":
                self.epilogue()
            else:
                t = _lattice_of(self.m.return_type)
                self.pop("%rax")
                if t == "i4":
                    self.line("    movslq %eax, %rax")
                self.epilogue()
            return

        if op in ("call", "callvirt"):
            self.do_call(ins)
            return

        if op == "calli":
            raise Unsupported("calli (indirect call signature token)")

        if op == "newobj":
            self.do_newobj(ins)
            return

        if op in ("ldfld", "ldflda", "stfld"):
            self.do_field(ins)
            return

        if op in ("ldsfld", "stsfld", "ldsflda"):
            self.do_static_field(ins)
            return

        if base == "conv":
            self.do_conv(op)
            return

        if op == "castclass":
            return

        if op == "isinst":
            self.pop("%rax")
            self.line("    test %rax, %rax")
            self.line("    setne %al")
            self.line("    movzbl %al, %eax")
            self.push("%rax", "ref")
            return

        if op == "box":
            tname = _type_name(ins.operand)
            lbl = self.new_label("N", tname)
            self.pop("%rdi")
            self.line(f"    lea {lbl}(%rip), %rsi")
            self.call_external("shim_box", "object shim_box(int64, const char*)")
            self.push("%rax", "ref")
            return

        if op == "unbox.any":
            self.pop("%rdi")
            self.call_external("shim_unbox", "int64 shim_unbox(object)")
            self.push("%rax", "unk")
            return

        if op == "unbox":
            raise Unsupported("unbox by-ref")

        if op == "ldtoken":
            raise Unsupported("ldtoken (metadata token)")

        if op == "ldftn":
            ref = parse_call_ref(ins.operand)
            sym = self.symbols.resolve(ref.owner, ref.name, ref.params)
            if sym is None:
                sym = sym_for(ref.owner, ref.name, ref.params)
                self.externals.setdefault(
                    sym, f"address-of {ref.owner}::{ref.name}")
            self.line(f"    lea {sym}(%rip), %rax")
            self.push("%rax", "ref")
            return

        if op == "newarr":
            self.pop("%rdi")
            self.line("    mov $8, %esi")
            self.call_external("shim_array_new", "object shim_array_new(int64, int32)")
            self.push("%rax", "ref")
            return

        if op == "ldlen":
            self.pop("%rax")
            self.line("    mov 8(%rax), %rax")
            self.push("%rax", "i8")
            return

        if base in ("ldelem", "ldelema"):
            self.pop("%rcx")   # index
            self.pop("%rax")   # array reference
            if base == "ldelema":
                self.line("    lea 16(%rax,%rcx,8), %rax")
                self.push("%rax", "ref")
            else:
                self.line("    mov 16(%rax,%rcx,8), %rax")
                self.push("%rax", "unk")
            return

        if base == "stelem":
            self.pop("%rdx")   # value
            self.pop("%rcx")   # index
            self.pop("%rax")   # array
            self.line("    mov %rdx, 16(%rax,%rcx,8)")
            return

        if base == "ldind":
            self.pop("%rax")
            self.line("    mov (%rax), %rax")
            self.push("%rax", "unk")
            return

        if base in ("stind", "stobj"):
            self.pop("%rdx")
            self.pop("%rax")
            self.line("    mov %rdx, (%rax)")
            return

        if op == "ldobj":
            self.pop("%rax")
            self.line("    mov (%rax), %rax")
            self.push("%rax", "unk")
            return

        if op == "cpobj":
            self.pop("%rdi")   # dest
            self.pop("%rsi")   # src
            self.line("    mov (%rsi), %rax")
            self.line("    mov %rax, (%rdi)")
            return

        if op == "initobj":
            self.pop("%rax")
            self.line("    movq $0, (%rax)")
            return

        if op == "throw":
            self.pop("%rdi")
            self.call_external("shim_throw", "noreturn void shim_throw(object)")
            return

        if self.force:
            self.line(f"    # unsupported in forced mode: {op} {ins.operand}")
            return

        raise Unsupported(f"opcode '{op}'")

    # ------------------------------------------------------------- helpers
    def reject_float(self, a: str, b: str, what: str) -> None:
        if "f8" in (a, b):
            raise Unsupported(f"floating-point '{what}'")

    def call_external(self, sym: str, signature: str) -> None:
        self.externals.setdefault(sym, signature)
        self.line(f"    call {sym}")

    def do_call(self, ins: Instruction) -> None:
        ref = parse_call_ref(ins.operand)
        n = ref.stack_pops
        if n > 6:
            raise Unsupported(f"call with {n} stack arguments")

        for k in range(n - 1, -1, -1):
            self.pop(ARG_REGS[k])

        if ref.instance:
            self.line(f"    test {ARG_REGS[0]}, {ARG_REGS[0]}")
            self.line("    jne 1f")
            self.line("    lea .Lnullmsg(%rip), %rdi")
            self.call_external("shim_nullref", "void shim_nullref(const char*)")
            self.line("1:")

        sym = self.symbols.resolve(ref.owner, ref.name, ref.params)
        if sym is None:
            sym = sym_for(ref.owner, ref.name, ref.params)
            self.externals.setdefault(
                sym, f"{ref.owner}::{ref.name}({', '.join(p.raw for p in ref.params)})")
        self.line(f"    call {sym}")

        if ref.return_type and ref.return_type.name != "void":
            t = _lattice_of(ref.return_type)
            if t == "i4":
                self.line("    movslq %eax, %rax")
            self.push("%rax", t)

    def do_newobj(self, ins: Instruction) -> None:
        ref = parse_call_ref(ins.operand)
        n = len(ref.params)
        if n + 1 > 6:
            raise Unsupported(f"constructor with {n} arguments (limit 5)")
        tn = self.new_label("N", ref.owner)
        self.line(f"    lea {tn}(%rip), %rdi")
        self.call_external("shim_obj_alloc", "object shim_obj_alloc(const char*)")
        self.line("    mov %rax, %r12")
        for k in range(n, 0, -1):
            self.pop(ARG_REGS[k])
        self.line("    mov %r12, %rdi")
        sym = self.symbols.resolve(ref.owner, ".ctor", ref.params)
        if sym is None:
            sym = sym_for(ref.owner, ".ctor", ref.params)
            self.externals.setdefault(sym, f"{ref.owner}::.ctor(...)")
        self.line(f"    call {sym}")
        self.push("%r12", "ref")

    def do_field(self, ins: Instruction) -> None:
        field = _field_name(ins.operand)
        lbl = self.new_label("N", field)

        if ins.opcode == "stfld":
            self.pop("%rdx")
            self.pop("%rdi")
            self.line(f"    lea {lbl}(%rip), %rsi")
            self.call_external("shim_field_slot", "void* shim_field_slot(object, const char*)")
            self.line("    mov %rdx, (%rax)")
            return

        self.pop("%rdi")
        self.line(f"    lea {lbl}(%rip), %rsi")
        self.call_external("shim_field_slot", "void* shim_field_slot(object, const char*)")
        if ins.opcode == "ldflda":
            self.push("%rax", "ref")
        else:
            self.line("    mov (%rax), %rax")
            self.push("%rax", "unk")

    def do_static_field(self, ins: Instruction) -> None:
        name = _field_name(ins.operand)
        lbl = self.new_label("N", name)
        self.line(f"    lea {lbl}(%rip), %rdi")
        self.call_external("shim_global_slot", "void* shim_global_slot(const char*)")
        if ins.opcode == "stsfld":
            self.pop("%rcx")
            self.line("    mov %rcx, (%rax)")
        elif ins.opcode == "ldsflda":
            self.push("%rax", "ref")
        else:
            self.line("    mov (%rax), %rax")
            self.push("%rax", "unk")

    def do_conv(self, op: str) -> None:
        t = self.pop("%rax")
        if op in ("conv.i8", "conv.u8", "conv.i", "conv.u"):
            self.line("    movslq %eax, %rax")
            self.push("%rax", "i8")
            return
        if op in ("conv.i4", "conv.u4"):
            self.line("    movslq %eax, %rax")
            self.push("%rax", "i4")
            return
        if op in ("conv.r4", "conv.r8"):
            raise Unsupported("float conversion")
        if op in ("conv.i1", "conv.i2", "conv.u1", "conv.u2"):
            size = 1 if op.endswith("1") else 2
            sign = op.startswith("conv.i")
            src = "%al" if size == 1 else "%ax"
            self.line(f"    {'movs' if sign else 'movz'}{'b' if size == 1 else 'w'}l {src}, %eax")
            self.line("    movslq %eax, %rax")
            self.push("%rax", "i4")
            return
        self.push("%rax", t)


def _lattice_of(t: TypeRef) -> str:
    from .lower import _lattice
    return _lattice(t)


def _i4_value(op: str, operand: str) -> int:
    if op == "ldc.i4.m1":
        return -1
    m = re.match(r"^ldc\.i4\.(\d)$", op)
    if m:
        return int(m.group(1))
    if op in ("ldc.i4.s", "ldc.i4"):
        v = operand.strip()
        try:
            return int(v, 0)
        except ValueError:
            return 0
    raise Unsupported(f"i4 constant '{op} {operand}'")


def _i8_value(operand: str) -> int:
    v = operand.strip().rstrip("Ll")
    return int(v, 0)


def _type_name(operand: str) -> str:
    t = parse_type(operand.strip())
    return t.name or operand.strip()


def _unquote(operand: str) -> str:
    m = re.search(r'"((?:[^"\\]|\\.)*)"', operand)
    if not m:
        m = re.search(r"'((?:[^'\\]|\\.)*)'", operand)
    if not m:
        return ""
    return _unescape(m.group(1))


def _unescape(s: str) -> str:
    out, i = [], 0
    while i < len(s):
        ch = s[i]
        if ch != "\\" or i + 1 >= len(s):
            out.append(ch)
            i += 1
            continue
        nxt = s[i + 1]
        simple = {"n": "\n", "r": "\r", "t": "\t", "0": "\0",
                  "\\": "\\", '"': '"', "'": "'", "a": "\a", "b": "\b",
                  "f": "\f", "v": "\v"}
        out.append(simple.get(nxt, nxt))
        i += 2
    return "".join(out)


def _field_name(operand: str) -> str:
    name = operand.rsplit("::", 1)[-1].strip()
    if len(name) >= 2 and name[0] == name[-1] and name[0] in "'\"":
        name = name[1:-1]
    return name.split()[0] if name.split() else name
