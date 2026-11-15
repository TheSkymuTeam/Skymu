"""Core IL data model: instructions, methods, types.

Nothing here knows about x86. Parsing produces these; lowering consumes them.
"""

from dataclasses import dataclass, field
from typing import List, Optional, Dict


@dataclass
class TypeRef:
    """A managed type as it appears in IL text."""

    raw: str                 # exact text from the IL
    kind: str                # prim | ref | array | valuetype | generic | unknown
    name: str = ""           # normalized name, e.g. "int32", "System.String"
    elem: Optional["TypeRef"] = None   # array element type
    args: List["TypeRef"] = field(default_factory=list)  # generic args

    @property
    def size(self) -> int:
        if self.kind == "array" or self.kind == "ref":
            return 8
        if self.kind == "generic":
            return 8
        if self.kind == "valuetype":
            return 8  # pointer-to-boxed for prototype purposes
        return {
            "bool": 1, "char": 2, "int8": 1, "uint8": 1,
            "int16": 2, "uint16": 2, "int32": 4, "uint32": 4,
            "int64": 8, "uint64": 8, "native int": 8, "native uint": 8,
            "float32": 4, "float64": 8,
        }.get(self.name, 8)

    @property
    def is_float(self) -> bool:
        return self.name in ("float32", "float64")

    @property
    def is_int64(self) -> bool:
        return self.name in ("int64", "uint64", "native int", "native uint")


@dataclass
class Instruction:
    offset: int
    opcode: str
    operand: str = ""
    raw: str = ""
    # filled by stack analysis
    depth_in: Optional[int] = None

    def __str__(self) -> str:
        return f"IL_{self.offset:04x}: {self.opcode} {self.operand}".rstrip()


@dataclass
class Local:
    index: int
    type: TypeRef


@dataclass
class Method:
    owner: str                    # "Namespace.Type"
    name: str                     # "Method"
    return_type: TypeRef
    params: List[TypeRef]
    param_names: List[str]
    is_static: bool
    is_virtual: bool
    is_instance: bool
    locals: List[Local]
    instructions: List[Instruction]
    maxstack: int = 8
    source_file: Optional[str] = None
    extern: bool = False
    has_eh: bool = False
    approximate: bool = False
    # filled by lowering
    max_depth: int = 0

    @property
    def full_name(self) -> str:
        return f"{self.owner}::{self.name}"

    @property
    def arg_count(self) -> int:
        """Number of stack-passed arguments including `this`."""
        n = len(self.params)
        if not self.is_static:
            n += 1
        return n

    @property
    def arg_types(self) -> List[TypeRef]:
        if self.is_static:
            return list(self.params)
        # `this` is a managed pointer; treat as reference
        this_t = TypeRef(raw="this", kind="ref", name="this")
        return [this_t] + list(self.params)


@dataclass
class MethodRef:
    """A call target as written in IL."""

    raw: str
    instance: bool = False
    return_type: Optional[TypeRef] = None
    params: List[TypeRef] = field(default_factory=list)
    owner: str = ""
    name: str = ""
    is_external: bool = True   # target lives in an assembly we are not transpiling

    @property
    def stack_pops(self) -> int:
        return len(self.params) + (1 if self.instance else 0)
