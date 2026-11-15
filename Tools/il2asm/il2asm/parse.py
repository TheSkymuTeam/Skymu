"""Parser for ILSpy `-il` text output.

ILSpy emits a stable, assembly-like textual IL. This module turns that text
into Method/Instruction objects. It is intentionally tolerant: unknown
constructs are preserved as opaque operands so lowering can fail loudly with
a useful message rather than the parser silently dropping code.
"""

import re
from typing import List, Optional, Tuple

from .ir import Instruction, Local, Method, TypeRef

METHOD_MODIFIERS = {
    "public", "private", "family", "assembly", "famorassem", "privatescope",
    "hidebysig", "newslot", "virtual", "final", "abstract", "specialname",
    "rtspecialname", "static", "instance", "unmanagedexp", "pins", "explicit",
    "default", "beforefieldinit", "cil", "managed", "unmanaged", "synchronized",
}

METHOD_START = re.compile(r"^\s*\.method\s+(.*)$")
IL_LINE = re.compile(r"^\s*IL_([0-9a-fA-F]{4}):\s*(\S+)\s*(.*?)\s*$")
LOCAL_LINE = re.compile(r"^\s*\[(\d+)\]\s+(\S.*?)\s*$")
MAXSTACK = re.compile(r"^\s*\.maxstack\s+(\d+)")

# Primitive IL type names, longest first so "native int" beats "int".
PRIMITIVES = [
    "native uint", "native int",
    "uint64", "int64", "float64", "uint32", "int32", "float32",
    "uint16", "int16", "uint8", "int8",
    "bool", "char", "object", "string", "typedref", "void",
]


def parse_type(text: str) -> TypeRef:
    """Best-effort parse of one IL type token."""
    t = text.strip()
    raw = t

    if not t:
        return TypeRef(raw=raw, kind="unknown")

    # Generic instantiation: Foo<Bar> or Foo`1<Bar>
    if t.endswith(">") and "<" in t:
        base, _, inner = t.partition("<")
        args = _split_generics(inner[:-1])
        return TypeRef(
            raw=raw, kind="generic", name=base.strip(),
            args=[parse_type(a) for a in args],
        )

    # Arrays, including rank specifiers and jagged
    if t.endswith("[]") or re.search(r"\[\s*,?\s*\]$", t):
        inner = re.sub(r"\[[^\]]*\]$", "", t)
        elem = parse_type(inner)
        return TypeRef(raw=raw, kind="array", name=elem.name + "[]", elem=elem)

    if t.startswith("class "):
        return TypeRef(raw=raw, kind="ref", name=_strip_assembly(t[6:]))
    if t.startswith("valuetype "):
        return TypeRef(raw=raw, kind="valuetype", name=_strip_assembly(t[10:]))
    if t.startswith("object"):
        return TypeRef(raw=raw, kind="ref", name="object")
    if t.startswith("string"):
        return TypeRef(raw=raw, kind="ref", name="string")
    if t.startswith("!") or t.startswith("!!"):
        return TypeRef(raw=raw, kind="generic", name=t)
    if t.startswith("["):
        # [lib]Namespace.Type
        return TypeRef(raw=raw, kind="ref", name=_strip_assembly(t))
    if t.startswith("&"):  # byref
        return TypeRef(raw=raw, kind="ref", name=t)

    for p in PRIMITIVES:
        if t == p:
            return TypeRef(raw=raw, kind="prim", name=p)
    if t.startswith("unsigned "):
        return TypeRef(raw=raw, kind="prim", name="uint" + t[9:])
    if t.startswith("int") or t.startswith("float"):
        head = t.split()[0]
        return TypeRef(raw=raw, kind="prim", name=head)

    # Anything dotted is a reference type in practice.
    if "." in t or "/" in t:
        return TypeRef(raw=raw, kind="ref", name=_strip_assembly(t))
    return TypeRef(raw=raw, kind="unknown", name=t)


def _strip_assembly(t: str) -> str:
    t = t.strip()
    if t.startswith("["):
        close = t.find("]")
        if close != -1:
            t = t[close + 1:]
    return t.strip()


def _split_generics(inner: str) -> List[str]:
    parts, depth, cur = [], 0, ""
    for ch in inner:
        if ch == "<":
            depth += 1
            cur += ch
        elif ch == ">":
            depth -= 1
            cur += ch
        elif ch == "," and depth == 0:
            parts.append(cur)
            cur = ""
        else:
            cur += ch
    if cur.strip():
        parts.append(cur)
    return parts


def _split_params(text: str) -> List[Tuple[str, str]]:
    """Split a parameter list into (type, name) pairs, honoring nested <>."""
    out, depth, cur = [], 0, ""
    for ch in text:
        if ch in "<([":
            depth += 1
        elif ch in ">)]":
            depth -= 1
        if ch == "," and depth == 0:
            out.append(cur)
            cur = ""
        else:
            cur += ch
    if cur.strip():
        out.append(cur)

    pairs = []
    for p in out:
        p = p.strip()
        if not p:
            continue
        # Trailing name is a valid identifier and the rest is the type.
        m = re.match(r"^(.*\S)\s+([A-Za-z_@][A-Za-z0-9_@`]*)$", p)
        if m and m.group(1).strip():
            pairs.append((m.group(1).strip(), m.group(2)))
        else:
            pairs.append((p, ""))
    return pairs


def _parse_signature(header: str) -> Tuple[TypeRef, List[TypeRef], List[str], bool, bool]:
    """Extract return type, param types, param names, staticness, virtualness."""
    is_static = bool(re.search(r"(?<![A-Za-z])static(?![A-Za-z])", header))
    is_virtual = bool(re.search(r"(?<![A-Za-z])virtual(?![A-Za-z])", header))

    cut = header.find(" cil ")
    sig = header if cut == -1 else header[:cut]

    open_paren = _find_param_start(sig)
    if open_paren == -1:
        return TypeRef(raw="void", kind="prim", name="void"), [], [], is_static, is_virtual

    close_paren = _match_paren(sig, open_paren)
    ret_text = sig[:open_paren].strip()
    param_text = sig[open_paren + 1:close_paren]

    # Strip declaration modifiers, then the trailing token is the method name
    # and everything before it is the (possibly multi-word) return type.
    toks = ret_text.split()
    while toks and toks[0] in METHOD_MODIFIERS:
        toks.pop(0)
    if len(toks) >= 2:
        ret = parse_type(" ".join(toks[:-1]))
    else:
        ret = TypeRef(raw="void", kind="prim", name="void")

    pairs = _split_params(param_text)
    return ret, [parse_type(t) for t, _ in pairs], [n for _, n in pairs], is_static, is_virtual


def _find_param_start(sig: str) -> int:
    """Locate the '(' that starts the parameter list (not a generic arg)."""
    depth = 0
    for i, ch in enumerate(sig):
        if ch == "<":
            depth += 1
        elif ch == ">":
            depth -= 1
        elif ch == "(" and depth == 0:
            return i
    return -1


def _match_paren(s: str, start: int) -> int:
    depth = 0
    for i in range(start, len(s)):
        if s[i] == "(":
            depth += 1
        elif s[i] == ")":
            depth -= 1
            if depth == 0:
                return i
    return len(s)


def _indent(line: str) -> int:
    expanded = line.expandtabs(4)
    return len(expanded) - len(expanded.lstrip())


CLASS_LINE = re.compile(r"^\s*\.class\s+(.*)$")


def _class_short_name(decl: str) -> str:
    """Last token of a .class declaration is the type name (may be quoted)."""
    toks = decl.rstrip().rsplit(None, 1)
    name = toks[-1] if toks else ""
    if len(name) >= 2 and name[0] == name[-1] and name[0] in "'\"":
        name = name[1:-1]
    return name


def parse_il(text: str, source_file: Optional[str] = None) -> List[Method]:
    """Parse a complete ILSpy `-il` dump into a list of methods.

    Owners are built from `.class` nesting, which ILSpy expresses through
    indentation, so nested types get the same `Outer/Nested` identity that
    call sites use.
    """
    lines = text.splitlines()
    methods: List[Method] = []
    class_stack: List[Tuple[int, str]] = []   # (indent, fully-qualified name)
    i = 0

    while i < len(lines):
        line = lines[i]
        indent = _indent(line)

        cm = CLASS_LINE.match(line)
        if cm:
            while class_stack and class_stack[-1][0] >= indent:
                class_stack.pop()
            short = _class_short_name(cm.group(1))
            nested = " nested " in f" {cm.group(1)} "
            if class_stack and nested:
                full = f"{class_stack[-1][1]}/{short}"
            else:
                full = short
            class_stack.append((indent, full))
            i += 1
            continue

        m = METHOD_START.match(line)
        if m:
            while class_stack and class_stack[-1][0] >= indent:
                class_stack.pop()
            owner = class_stack[-1][1] if class_stack else "?"
            method, i = _parse_method(lines, i, m.group(1), owner, source_file)
            methods.append(method)
            continue

        i += 1

    return methods


def _parse_method(lines: List[str], start: int, header_first: str,
                  owner: str, source_file: Optional[str]) -> Tuple[Method, int]:
    header = header_first
    i = start + 1
    # Header continues until an opening brace.
    while i < len(lines) and "{" not in lines[i]:
        header += " " + lines[i].strip()
        i += 1

    if i >= len(lines):
        raise ValueError(f"unterminated method header at line {start}")

    # Collect body until brace depth returns to zero.
    i += 1
    depth = 1
    body: List[str] = []
    while i < len(lines) and depth > 0:
        ln = lines[i]
        depth += ln.count("{") - ln.count("}")
        if depth > 0:
            body.append(ln)
        i += 1

    # P/Invoke declarations carry `pinvokeimpl("dll" ...)` in the header and
    # have no body; they are not transpilable, they are external symbols.
    is_extern = "pinvokeimpl" in header
    sig_header = re.sub(r"pinvokeimpl\s*\([^)]*\)", "", header)
    ret, params, names, is_static, is_virtual = _parse_signature(sig_header)

    name = _method_name(sig_header, params)
    instructions: List[Instruction] = []
    locals_: List[Local] = []
    maxstack = 8
    has_eh = False

    in_locals = False
    for ln in body:
        stripped = ln.strip()
        if stripped.startswith(".try") or stripped.startswith("catch") \
                or stripped.startswith("finally") or stripped.startswith("filter"):
            has_eh = True
        ms = MAXSTACK.match(ln)
        if ms:
            maxstack = int(ms.group(1))
            continue

        if ".locals init" in ln or ".locals" in ln:
            in_locals = True
            continue

        if in_locals:
            lm = LOCAL_LINE.match(ln)
            if lm:
                locals_.append(Local(int(lm.group(1)), parse_type(lm.group(2))))
                continue
            if ")" in ln:
                in_locals = False
            continue

        im = IL_LINE.match(ln)
        if im:
            instructions.append(Instruction(
                offset=int(im.group(1), 16),
                opcode=im.group(2).lower(),
                operand=im.group(3),
                raw=ln.strip(),
            ))

    return Method(
        owner=owner,
        name=name,
        return_type=ret,
        params=params,
        param_names=names,
        is_static=is_static,
        is_virtual=is_virtual,
        is_instance=not is_static,
        locals=locals_,
        instructions=instructions,
        maxstack=maxstack,
        source_file=source_file,
        extern=is_extern,
        has_eh=has_eh,
    ), i


def _method_name(header: str, params: List[TypeRef]) -> str:
    open_paren = _find_param_start(header)
    before = header if open_paren == -1 else header[:open_paren]
    before = before.strip().rstrip()
    if not before:
        return "?"
    name = before.rsplit(None, 1)[-1]
    return name.strip()
