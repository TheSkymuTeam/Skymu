"""Split one transpiled `.S` back into one assembly module per original file.

The forced pipeline emits a single `.S` per assembly. This tool distributes the
same text across a 1:1 mirror of the original source tree:

    archive/Skymu/App.xaml.cs   ->  Skymu/App.xaml.cs.S
    archive/Skymu/App.xaml      ->  Skymu/App.xaml.S

Methods are attributed to a file by the type that declares them, read from the
C# sources in the archive. Compiler-generated types (anonymous types, state
machines, attributes) fall back to the file that constructs them, and anything
still unresolved goes to a documented compiler-generated bucket.

Files that are not `.cs` become `.incbin` modules, so binary assets keep their
exact bytes while still being assembly source.

    python3 -m il2asm.split --asm Skymu.S --report report.json \
        --sources archive/Skymu --out Skymu
"""

import argparse
import json
import re
import sys
from collections import defaultdict
from pathlib import Path
from typing import Dict, List, Optional, Tuple

from .lower import mangle

METHOD_HEAD = re.compile(r"^\s*\.globl\s+(\S+)\s*$")
LABEL = re.compile(r"^(\.[A-Za-z0-9_.$]+):\s*$")
DECL = re.compile(
    r"\b(namespace|class|struct|interface|record|enum)\s+"
    r"(?:class\s+|struct\s+)?([A-Za-z_][\w.]*)"
)


# --------------------------------------------------------------- C# scanning
def strip_cs(text: str) -> str:
    """Remove comments and literals so declarations can be found by regex."""
    out: List[str] = []
    i, n = 0, len(text)
    while i < n:
        c = text[i]
        if c == "/" and i + 1 < n and text[i + 1] == "/":
            j = text.find("\n", i)
            i = n if j < 0 else j
        elif c == "/" and i + 1 < n and text[i + 1] == "*":
            j = text.find("*/", i + 2)
            i = n if j < 0 else j + 2
        elif c in "\"'":
            quote = c
            i += 1
            while i < n:
                if text[i] == "\\":
                    i += 2
                    continue
                if text[i] == quote:
                    i += 1
                    break
                i += 1
        else:
            out.append(c)
            i += 1
    return "".join(out)


def scan_sources(root: Path) -> Tuple[Dict[str, str], Dict[str, str]]:
    """Return (fully-qualified type -> relpath, simple type -> relpath)."""
    full: Dict[str, str] = {}
    simple: Dict[str, str] = {}
    for path in sorted(root.rglob("*.cs")):
        rel = path.relative_to(root).as_posix()
        text = strip_cs(path.read_text(encoding="utf-8", errors="replace"))
        stack: List[Tuple[int, str, str]] = []   # (depth, kind, name)
        file_ns = ""
        for m in DECL.finditer(text):
            kind, name = m.group(1), m.group(2)
            depth = text.count("{", 0, m.start()) - text.count("}", 0, m.start())
            while stack and stack[-1][0] >= depth:
                stack.pop()
            if kind == "namespace":
                if depth == 0 and re.match(r"\s*;", text[m.end():m.end() + 8]):
                    file_ns = name
                stack.append((depth, kind, name))
                continue
            chain = [s[2] for s in stack]
            if file_ns and (not chain or chain[0] != file_ns):
                chain = [file_ns] + chain
            fully = ".".join(chain + [name])
            full.setdefault(fully, rel)
            simple.setdefault(name, rel)
            stack.append((depth, kind, name))
    return full, simple


# ----------------------------------------------------------- assembly split
def split_text(text: str) -> Tuple[List[str], Dict[str, List[str]],
                                   List[Tuple[str, List[str]]]]:
    """Return (method order, fn -> chunk lines, [(label, block lines)])."""
    lines = text.splitlines()
    order: List[str] = []
    chunks: Dict[str, List[str]] = {}
    labels: List[Tuple[str, List[str]]] = []
    i, n = 0, len(lines)

    while i < n:
        head = METHOD_HEAD.match(lines[i])
        if head and i + 1 < n and lines[i + 1].lstrip().startswith(f".type {head.group(1)},"):
            fn = head.group(1)
            block = [lines[i]]
            i += 1
            while i < n:
                block.append(lines[i])
                if lines[i].lstrip().startswith(f".size {fn},"):
                    i += 1
                    break
                i += 1
            chunks[fn] = block
            order.append(fn)
            continue

        lm = LABEL.match(lines[i])
        if lm:
            block = [lines[i]]
            i += 1
            while i < n and not LABEL.match(lines[i]) \
                    and not lines[i].lstrip().startswith(".section"):
                block.append(lines[i])
                i += 1
            labels.append((lm.group(1), block))
            continue

        i += 1

    return order, chunks, labels


def attribute(label: str, pairs: List[Tuple[str, str]]) -> Optional[str]:
    for mangled, fn in pairs:
        if label.endswith("_" + mangled):
            return fn
    return None


# --------------------------------------------------------------------- output
def asset_module(rel: str, src: Path, symbol: str) -> str:
    return "\n".join([
        f"# {rel}",
        "    .section .rodata",
        "",
        f"    .globl {symbol}",
        f"{symbol}:",
        f'    .incbin "{src.as_posix()}"',
        "",
        f"    .globl {symbol}_end",
        f"{symbol}_end:",
        "",
        '    .section .note.GNU-stack,"",@progbits',
        "",
    ])


def empty_module(rel: str, note: str) -> str:
    return "\n".join([
        f"# {rel}",
        f"# {note}",
        "    .text",
        "",
        '    .section .note.GNU-stack,"",@progbits',
        "",
    ])


def symbol_for(rel: str) -> str:
    cleaned = "".join(ch if ch.isalnum() else "_" for ch in rel).lower()
    while "__" in cleaned:
        cleaned = cleaned.replace("__", "_")
    return "res_" + cleaned.strip("_")


def main(argv: List[str]) -> int:
    ap = argparse.ArgumentParser(prog="il2asm.split", description=__doc__)
    ap.add_argument("--asm", required=True, help="transpiled .S to split")
    ap.add_argument("--report", required=True, help="report.json from the same run")
    ap.add_argument("--sources", required=True, help="original source tree to mirror")
    ap.add_argument("--out", required=True, help="directory to write .S modules into")
    ap.add_argument("--assets", action="store_true",
                    help="emit .incbin modules for non-.cs files")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args(argv)

    asm_path = Path(args.asm)
    src_root = Path(args.sources).resolve()
    out_root = Path(args.out)
    text = asm_path.read_text(encoding="utf-8", errors="replace")

    order, chunks, labels = split_text(text)
    report = json.load(open(args.report, encoding="utf-8"))
    entries = report["methods"]

    sym_owner: Dict[str, str] = {}
    sym_order: List[str] = []
    for m in entries:
        sym = m.get("symbol")
        if sym:
            sym_owner[sym] = m["method"].split("::")[0]
            sym_order.append(sym)

    full, simple = scan_sources(src_root)

    # Everything the original tree contains, in stable order.
    originals = sorted(p for p in src_root.rglob("*") if p.is_file())
    files = [p.relative_to(src_root).as_posix() for p in originals]
    cs_files = [f for f in files if f.endswith(".cs")]

    def resolve(owner: str) -> Optional[str]:
        name = owner.replace("'", "")
        if name in full:
            return full[name]
        parts = name.split("/")
        for k in range(len(parts), 0, -1):
            cand = ".".join(parts[:k])
            if cand in full:
                return full[cand]
        base = parts[0]
        if base in full:
            return full[base]
        return simple.get(base.split(".")[-1])

    mangled_pairs = sorted(((mangle(fn), fn) for fn in order),
                           key=lambda p: -len(p[0]))

    rodata_by_fn: Dict[str, List[List[str]]] = defaultdict(list)
    shared: Dict[str, List[str]] = {}
    for label, block in labels:
        fn = attribute(label, mangled_pairs)
        if fn is not None:
            rodata_by_fn[fn].append(block)
        elif label == ".Lnullmsg" or label.startswith(".Ltype_"):
            shared[label] = block
        else:
            shared[label] = block   # unknown; keep globally available

    method_file: Dict[str, str] = {}
    unassigned: List[str] = []
    for fn in order:
        owner = sym_owner.get(fn)
        target = resolve(owner) if owner else None
        if target and target in cs_files:
            method_file[fn] = target
        else:
            unassigned.append(fn)

    # Second pass: compiler-generated types belong where they are constructed.
    if unassigned:
        by_type = {f".Ltype_{mangle(sym_owner[fn])}": fn
                   for fn in unassigned if fn in sym_owner}
        for fn in list(unassigned):
            chunk_text = "\n".join(chunks[fn])
            owner = sym_owner.get(fn, "")
            label = f".Ltype_{mangle(owner)}"
            if label in chunk_text:
                continue
            for caller, caller_chunk in chunks.items():
                if caller in unassigned:
                    continue
                if label in "\n".join(caller_chunk) and caller in method_file:
                    method_file[fn] = method_file[caller]
                    unassigned.remove(fn)
                    break

    fallback = next((f for f in cs_files if "Skymu_Content.g.cs" in f), cs_files[0])
    for fn in list(unassigned):
        method_file[fn] = fallback
    unassigned = []

    per_file: Dict[str, List[str]] = defaultdict(list)
    for fn in order:
        per_file[method_file[fn]].append(fn)

    written = 0
    for rel in files:
        src = src_root / rel
        dest = out_root / (rel + ".S")
        if not args.dry_run:
            dest.parent.mkdir(parents=True, exist_ok=True)

        if rel.endswith(".cs"):
            fns = per_file.get(rel, [])
            if not fns:
                body = empty_module(rel, "no methods declared in this file")
            else:
                out: List[str] = [f"# {rel}", "    .text", ""]
                wanted: set = set()
                for fn in fns:
                    out.extend(chunks[fn])
                    out.append("")
                    joined = "\n".join(chunks[fn])
                    for lab in re.findall(r"\.Ltype_[A-Za-z0-9_]+", joined):
                        wanted.add(lab)
                    if ".Lnullmsg" in joined:
                        wanted.add(".Lnullmsg")
                for lab in sorted(wanted):
                    if lab in shared:
                        out.extend(shared[lab])
                        out.append("")
                rodata: List[List[str]] = []
                for fn in fns:
                    rodata.extend(rodata_by_fn.get(fn, []))
                if rodata:
                    out.append("    .section .rodata")
                    for block in rodata:
                        out.extend(block)
                        out.append("")
                out.append('    .section .note.GNU-stack,"",@progbits')
                out.append("")
                body = "\n".join(out)
        elif args.assets:
            body = asset_module(rel, src.resolve(), symbol_for(rel))
        else:
            continue

        if not args.dry_run:
            dest.write_text(body, encoding="utf-8")
        written += 1

    total_methods = sum(len(v) for v in per_file.values())
    print(f"source files   : {len(files)}")
    print(f"modules        : {written}")
    print(f"methods placed : {total_methods} / {len(order)}")
    print(f"files with code: {len(per_file)}")
    print(f"fallback bucket: {fallback}")
    if len(order) != len(sym_order):
        print(f"note: {len(sym_order) - len(order)} report symbols had no emitted chunk")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
