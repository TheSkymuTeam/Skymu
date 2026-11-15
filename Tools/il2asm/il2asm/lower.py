"""x86-64 emitter: turns an analyzed Method into GAS assembly text.

Runtime model
-------------
* Every IL stack value occupies one 8-byte slot. Values narrower than 8 bytes
  live in the low 32 bits; 32-bit instructions are used when both operands are
  known `i4`.
* `this` and all references are plain 64-bit pointers. `null` is 0.
* The evaluation stack lives in the native frame (fixed slots), so `rsp` never
  moves after the prologue and calls stay 16-byte aligned.
* Field and static identity is by name, resolved at run time by the shim
  (`shim_field_slot` / `shim_global_slot`). Slower than precomputed offsets,
  and deliberate: the transpiler has no field-layout metadata.
* Boxing materializes an object with the value in a `value__` slot, so
  `Object.ToString`-style paths can recover it.
* Unsupported constructs are rejected with a specific reason instead of
  emitting plausible-looking wrong code. The rejection reasons are the
  coverage report.
"""

import re
from typing import Dict, List, Optional, Tuple

from .ir import Instruction, Method, MethodRef, TypeRef
from .parse import _match_paren, _split_params, parse_type

ARG_REGS = ["%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9"]


class Unsupported(Exception):
    def __init__(self, what: str):
        super().__init__(what)
        self.what = what


def mangle(sym: str) -> str:
    out = []
    for ch in sym:
        if ch.isalnum():
            out.append(ch)
        else:
            out.append("_")
    s = re.sub(r"_+", "_", "".join(out)).strip("_")
    return s or "anon"


def method_key(owner: str, name: str, params: List[TypeRef]) -> Tuple[str, str, Tuple[str, ...]]:
    return (owner, name, tuple(p.raw for p in params))


def sym_for(owner: str, name: str, params: List[TypeRef]) -> str:
    arity = "_".join(_type_tag(p) for p in params) or "void"
    return "m_" + mangle(owner) + "_" + mangle(name) + "__" + arity


class SymbolTable:
    """Assigns one native symbol per managed method, disambiguating collisions."""

    def __init__(self) -> None:
        self.by_key: Dict[Tuple[str, str, Tuple[str, ...]], str] = {}
        self.used: Dict[str, Tuple[str, str, Tuple[str, ...]]] = {}

    def register(self, m: Method) -> str:
        key = method_key(m.owner, m.name, m.params)
        if key in self.by_key:
            return self.by_key[key]
        base = sym_for(m.owner, m.name, m.params)
        sym, n = base, 1
        while sym in self.used:
            n += 1
            sym = f"{base}_{n}"
        self.used[sym] = key
        self.by_key[key] = sym
        return sym

    def resolve(self, owner: str, name: str, params: List[TypeRef]) -> Optional[str]:
        return self.by_key.get(method_key(owner, name, params))


def _type_tag(t: TypeRef) -> str:
    if t.kind == "array":
        return "arr"
    if t.kind == "ref":
        return "ref"
    if t.kind == "generic":
        return "gen"
    return {
        "int32": "i4", "uint32": "u4", "int64": "i8", "uint64": "u8",
        "int16": "i2", "uint16": "u2", "int8": "i1", "uint8": "u1",
        "bool": "b", "char": "c", "float32": "f4", "float64": "f8",
        "native int": "i8", "native uint": "u8",
    }.get(t.name, "v")


def parse_call_ref(operand: str) -> MethodRef:
    raw = operand.strip()
    instance = False
    if raw.startswith("instance "):
        instance = True
        raw = raw[len("instance "):]

    paren = raw.find("(")
    if paren == -1:
        return MethodRef(raw=operand, instance=instance)

    close = _match_paren(raw, paren)
    head = raw[:paren].strip()
    param_text = raw[paren + 1:close]
    pairs = _split_params(param_text)
    params = [parse_type(t) for t, _ in pairs]

    owner, name = "", ""
    if "::" in head:
        owner_part, _, name = head.partition("::")
        head_parts = owner_part.rsplit(None, 1)
        owner = _strip_asm(head_parts[-1]) if head_parts else owner_part
        ret_text = owner_part[: len(owner_part) - len(head_parts[-1])].strip() if len(head_parts) > 1 else "void"
    else:
        name = head.rsplit(None, 1)[-1]
        ret_text = head[: len(head) - len(name)].strip()

    ret = parse_type(ret_text) if ret_text else TypeRef(raw="void", kind="prim", name="void")
    if ret.kind == "unknown":
        ret = type_from_ret_text(ret_text)

    return MethodRef(raw=operand, instance=instance, return_type=ret,
                     params=params, owner=owner, name=name.strip())


def type_from_ret_text(text: str) -> TypeRef:
    t = parse_type(text)
    if t.kind != "unknown":
        return t
    return t


def _strip_asm(t: str) -> str:
    t = t.strip()
    if t.startswith("["):
        close = t.find("]")
        if close != -1:
            t = t[close + 1:]
    return t.strip()


# ---------------------------------------------------------------- stack effect

def stack_effect(ins: Instruction, method: Method) -> Tuple[int, int]:
    base = ins.opcode.split(".")[0]

    # prefixes and no-op markers
    if base in ("constrained", "readonly", "volatile", "tail", "unaligned",
                "no", "nop", "break"):
        return 0, 0

    if base in ("ldarg", "ldarga", "ldloc", "ldloca", "ldc", "ldstr", "ldnull",
                "ldsfld", "ldsflda", "ldlen", "ldftn", "ldvirtftn", "sizeof",
                "arglist", "localloc", "ldtoken"):
        return 0, 1
    if base in ("starg", "stloc", "stsfld", "initobj"):
        return 1, 0
    if ins.opcode == "dup":
        return 1, 2
    if ins.opcode == "pop":
        return 1, 0
    if base in ("add", "sub", "mul", "div", "rem", "and", "or", "xor",
                "shl", "shr", "ceq", "cgt", "clt"):
        return 2, 1
    if base in ("neg", "not", "conv", "castclass", "isinst"):
        return 0, 0
    if base in ("box", "unbox"):
        return 1, 1
    if ins.opcode == "ret":
        return (0, 0) if method.return_type.name == "void" else (1, 0)
    if base in ("br", "leave"):
        return 0, 0
    if base in ("brtrue", "brfalse", "brinst", "brnull", "brzero"):
        return 1, 0
    if base in ("beq", "bne", "bge", "bgt", "ble", "blt"):
        return 2, 0
    if base == "switch":
        return 1, 0
    if ins.opcode in ("call", "callvirt", "calli", "jmp"):
        ref = parse_call_ref(ins.operand)
        pops = ref.stack_pops + (1 if ins.opcode == "calli" else 0)
        pushes = 0 if (ref.return_type and ref.return_type.name == "void") else 1
        return pops, (0 if ins.opcode == "jmp" else pushes)
    if ins.opcode == "newobj":
        ref = parse_call_ref(ins.operand)
        return len(ref.params), 1
    if base in ("ldfld", "ldflda"):
        return 1, 1
    if base == "stfld":
        return 2, 0
    if base == "newarr":
        return 1, 1
    if base in ("ldelem", "ldelema"):
        return 2, 1
    if base == "stelem":
        return 3, 0
    if base == "ldind":
        return 1, 1
    if base in ("stind", "stobj"):
        return 2, 0
    if base == "ldobj":
        return 1, 1
    if base == "cpobj":
        return 2, 0
    if ins.opcode == "throw":
        return 1, 0
    if base in ("rethrow", "endfinally", "endfilter"):
        return 0, 0
    raise Unsupported(f"opcode '{ins.opcode}'")


def successors(ins: Instruction, method: Method) -> List[int]:
    base = ins.opcode.split(".")[0]
    idx_by_off = {i.offset: n for n, i in enumerate(method.instructions)}
    n = len(method.instructions)
    here = idx_by_off[ins.offset]
    fall = [here + 1] if here + 1 < n else []

    if base == "switch":
        targets = [int(m, 16) for m in re.findall(r"IL_([0-9a-fA-F]{4})", ins.operand)]
        return [idx_by_off[t] for t in targets if t in idx_by_off] + fall

    if base in ("br", "leave"):
        t = _target(ins)
        return [idx_by_off[t]] if t in idx_by_off else fall

    if base in ("brtrue", "brfalse", "brinst", "brnull", "brzero",
                "beq", "bne", "bge", "bgt", "ble", "blt"):
        t = _target(ins)
        return ([idx_by_off[t]] if t in idx_by_off else []) + fall

    if base in ("ret", "throw", "rethrow", "endfinally", "endfilter", "jmp"):
        return []

    return fall


def _target(ins: Instruction) -> int:
    m = re.search(r"IL_([0-9a-fA-F]{4})", ins.operand)
    if not m:
        raise Unsupported(f"branch target not understood: '{ins.operand}'")
    return int(m.group(1), 16)


# ---------------------------------------------------------------- analysis

def analyze(method: Method, strict: bool = True) -> None:
    """Compute stack depth and a coarse type lattice at every instruction.

    With strict=False the analysis clamps instead of failing: underflow pads the
    stack, depth conflicts take the deeper branch. Forced mode then emits code
    for methods whose control flow the prototype cannot prove, which is
    approximate by construction and marked as such in the report.
    """
    ins = method.instructions
    n = len(ins)
    if not ins:
        method._depths = []      # type: ignore[attr-defined]
        method._types = []       # type: ignore[attr-defined]
        method._idx = {}         # type: ignore[attr-defined]
        method.max_depth = 0
        return
    idx_by_off = {i.offset: k for k, i in enumerate(ins)}

    depths: List[Optional[int]] = [None] * n
    types: List[Optional[List[str]]] = [None] * n

    depths[0] = 0
    types[0] = []
    work = [0]

    while work:
        k = work.pop()
        d = depths[k]
        st = list(types[k] or [])
        if d is None:
            raise Unsupported("unreachable analysis state")

        pops, pushes = stack_effect(ins[k], method)
        if d < pops:
            if strict:
                raise Unsupported(
                    f"stack underflow at IL_{ins[k].offset:04x} ({ins[k].opcode}): "
                    f"depth {d} < pops {pops}")
            method.approximate = True
            d = pops
            if types[k] is not None:
                types[k] = ["unk"] * d
        out = st[: d - pops]

        op = ins[k].opcode
        base = op.split(".")[0]
        if base in ("ldarg", "ldarga"):
            out = out + [_lattice(method.arg_types[_arg_index(ins[k], method)])]
        elif base in ("ldloc", "ldloca"):
            out = out + [_local_lattice(method, _local_index(ins[k]))]
        elif op.startswith("ldc.i4"):
            out = out + ["i4"]
        elif op == "ldc.i8":
            out = out + ["i8"]
        elif op in ("ldc.r4", "ldc.r8"):
            out = out + ["f8"]
        elif op in ("ldstr", "ldnull", "ldsfld", "ldsflda", "ldfld", "ldflda",
                    "newarr", "ldelema", "ldftn", "ldvirtftn", "ldtoken", "box"):
            out = out + ["ref"]
        elif op == "dup":
            out = out + [st[-1] if st else "unk"]
        elif base == "ldelem":
            out = out + ["unk"]
        elif op in ("call", "callvirt", "calli"):
            ref = parse_call_ref(ins[k].operand)
            if ref.return_type and ref.return_type.name != "void":
                out = out + [_lattice(ref.return_type)]
        elif op == "newobj":
            out = out + ["ref"]
        elif base == "conv":
            out = out + [_conv_lattice(op)]
        elif base in ("ceq", "cgt", "clt"):
            out = out + ["i4"]
        elif base in ("add", "sub", "mul", "div", "rem", "and", "or", "xor"):
            a = st[-2] if len(st) >= 2 else "unk"
            b = st[-1] if st else "unk"
            out = out + [_arith_lattice(a, b)]
        elif base in ("neg", "not"):
            out = out + [st[-1] if st else "unk"]
        elif base in ("ldind",):
            out = out + ["unk"]
        elif op == "ldobj":
            out = out + ["unk"]
        elif op in ("castclass", "isinst", "unbox.any"):
            out = out + ["ref" if op != "unbox.any" else "unk"]
        else:
            out = out + ["unk"] * pushes

        for nk in successors(ins[k], method):
            if depths[nk] is None:
                depths[nk] = len(out)
                types[nk] = out
                work.append(nk)
            else:
                if depths[nk] != len(out):
                    if strict:
                        raise Unsupported(
                            f"inconsistent stack depth at IL_{ins[nk].offset:04x}: "
                            f"{depths[nk]} vs {len(out)}")
                    method.approximate = True
                    width = max(depths[nk], len(out))
                    out = out + ["unk"] * (width - len(out))
                    types[nk] = (types[nk] or []) + ["unk"] * (width - len(types[nk] or []))
                    depths[nk] = width
                types[nk] = _merge_types(types[nk] or [], out)

    method.max_depth = max([d for d in depths if d is not None] + [0])
    method._depths = depths          # type: ignore[attr-defined]
    method._types = types            # type: ignore[attr-defined]
    method._idx = idx_by_off         # type: ignore[attr-defined]


def _merge_types(a: List[str], b: List[str]) -> List[str]:
    n = min(len(a), len(b))
    return [a[i] if a[i] == b[i] else "unk" for i in range(n)]


def _lattice(t: TypeRef) -> str:
    if t.kind in ("ref", "array"):
        return "ref"
    if t.is_float:
        return "f8"
    if t.is_int64:
        return "i8"
    if t.name == "void":
        return "void"
    return "i4"


def _local_lattice(method: Method, i: int) -> str:
    for l in method.locals:
        if l.index == i:
            return _lattice(l.type)
    return "unk"


def _conv_lattice(op: str) -> str:
    if op.endswith((".i8", ".u8", ".i", ".u")):
        return "i8"
    if op.endswith((".r4", ".r8")):
        return "f8"
    return "i4"


def _arith_lattice(a: str, b: str) -> str:
    if "f8" in (a, b):
        return "f8"
    if "i8" in (a, b):
        return "i8"
    return a if a == b else "i4"


def _arg_index(ins: Instruction, method: Optional[Method] = None) -> int:
    """ILSpy writes `ldarg.s name` for named parameters, not always an index."""
    op = ins.opcode
    if op.startswith(("ldarg.s", "starg.s", "ldarga.s")):
        tok = ins.operand.strip()
    elif re.match(r"^(ldarg|starg|ldarga)\.(\d+)$", op):
        return int(re.match(r"^(?:ldarg|starg|ldarga)\.(\d+)$", op).group(1))
    elif op in ("ldarg", "starg", "ldarga"):
        tok = ins.operand.strip()
    else:
        raise Unsupported(f"argument index for '{op}'")

    if re.fullmatch(r"-?\d+", tok):
        return int(tok)
    if method is not None and tok in method.param_names:
        i = method.param_names.index(tok)
        return i if method.is_static else i + 1
    raise Unsupported(f"argument '{tok}' not found in signature of {method.full_name if method else '?'}")


def _local_index(ins: Instruction) -> int:
    op = ins.opcode
    if op.startswith(("ldloc.s", "stloc.s", "ldloca.s")):
        tok = ins.operand.strip()
    else:
        m = re.match(r"^(ldloc|stloc|ldloca)\.(\d+)$", op)
        if m:
            return int(m.group(2))
        if op in ("ldloc", "stloc", "ldloca"):
            tok = ins.operand.strip()
        else:
            raise Unsupported(f"local index for '{op}'")
    if not re.fullmatch(r"-?\d+", tok):
        raise Unsupported(f"named local '{tok}' is not supported")
    return int(tok)
