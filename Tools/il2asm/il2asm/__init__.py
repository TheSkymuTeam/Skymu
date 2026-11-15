"""IL2ASM - transpile managed IL to x86-64 assembly.

Prototype pipeline:
    C# --(dotnet build / ilspycmd)--> IL text --(il2asm)--> GAS .S
        --(gcc/as + shim)--> native executable
"""

from .ir import Instruction, Local, Method, MethodRef, TypeRef
from .lower import Unsupported, analyze, mangle, sym_for
from .parse import parse_il, parse_type
from .emit import Emitter

__all__ = [
    "Instruction", "Local", "Method", "MethodRef", "TypeRef",
    "Unsupported", "analyze", "mangle", "sym_for",
    "parse_il", "parse_type", "Emitter",
]
