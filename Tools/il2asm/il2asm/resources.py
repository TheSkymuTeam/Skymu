"""Emit non-code artifacts (XAML, resx, json) as assembly data blobs.

XAML is markup, not IL, so it has no transpiled form. What it does have is a
byte representation, and a byte representation fits in a .S file. Each artifact
becomes a global symbol whose contents are `.incbin`'d from the original file,
plus a small table of {name, ptr, length} triples so a native loader can find
them.

    python3 -m il2asm.resources <root> -o resources.S
"""

import argparse
import os
import sys
from pathlib import Path
from typing import List, Tuple

EXTENSIONS = {
    ".xaml": "xaml",
    ".resx": "resx",
    ".json": "json",
    ".xml": "xml",
    ".txt": "text",
    ".lua": "lua",
    ".md": "markdown",
    ".pem": "pem",
}

SKIP_DIRS = {".git", "bin", "obj", "build", "node_modules", ".vs", "packages"}


def collect(root: Path, strip: str = "") -> List[Tuple[str, Path, str]]:
    out = []
    for dirpath, dirnames, filenames in os.walk(root):
        dirnames[:] = [d for d in dirnames if d not in SKIP_DIRS]
        for fn in sorted(filenames):
            ext = Path(fn).suffix.lower()
            if ext not in EXTENSIONS:
                continue
            full = Path(dirpath) / fn
            rel = full.relative_to(root).as_posix()
            if strip and (rel == strip or rel.startswith(strip + "/")):
                rel = rel[len(strip) + 1:]
            out.append((rel, full, EXTENSIONS[ext]))
    return out


def symbol_for(rel: str) -> str:
    cleaned = "".join(ch if ch.isalnum() else "_" for ch in rel)
    while "__" in cleaned:
        cleaned = cleaned.replace("__", "_")
    return "res_" + cleaned.strip("_").lower()


def emit(root: Path, entries: List[Tuple[str, Path, str]]) -> str:
    lines = ['    .section .rodata', ""]
    for rel, full, kind in entries:
        sym = symbol_for(rel)
        lines.append(f"    .globl {sym}")
        lines.append(f"{sym}:")
        lines.append(f'    .incbin "{full.as_posix()}"')
        lines.append("")
        lines.append(f"    .globl {sym}_end")
        lines.append(f"{sym}_end:")
        lines.append("")

    # registry: name pointer, data pointer, length, in declaration order
    lines.append("    .globl resource_table")
    lines.append("resource_table:")
    for rel, full, kind in entries:
        sym = symbol_for(rel)
        lines.append(f"    .quad {sym}_name")
        lines.append(f"    .quad {sym}")
        lines.append(f"    .quad {sym}_end - {sym}")
    lines.append("    .quad 0")
    lines.append("")
    lines.append("    .globl resource_count")
    lines.append("resource_count:")
    lines.append(f"    .quad {len(entries)}")
    lines.append("")

    for rel, full, kind in entries:
        sym = symbol_for(rel)
        lines.append(f"{sym}_name:")
        lines.append(f'    .asciz "{rel}"')
    lines.append("")
    lines.append('    .section .note.GNU-stack,"",@progbits')
    return "\n".join(lines)


def main(argv: List[str]) -> int:
    ap = argparse.ArgumentParser(prog="il2asm.resources", description=__doc__)
    ap.add_argument("root", help="directory to scan")
    ap.add_argument("-o", "--out", default="resources.S")
    ap.add_argument("--strip", default="",
                    help="drop this leading path component from resource names")
    args = ap.parse_args(argv)

    root = Path(args.root).resolve()
    entries = collect(root, args.strip)
    Path(args.out).write_text(emit(root, entries))

    total = sum(p.stat().st_size for _, p, _ in entries)
    print(f"{len(entries)} artifacts, {total} bytes -> {args.out}")
    for rel, _, kind in entries[:12]:
        print(f"  {kind:8} {rel}")
    if len(entries) > 12:
        print(f"  ... {len(entries) - 12} more")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
