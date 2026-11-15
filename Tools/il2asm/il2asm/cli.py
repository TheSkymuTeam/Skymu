"""Command line driver: IL text -> GAS assembly + coverage report."""

import argparse
import json
import sys
from pathlib import Path
from typing import Dict, List, Tuple

from .emit import Emitter, mangle
from .ir import Method
from .lower import SymbolTable, Unsupported, analyze, parse_call_ref
from .parse import parse_il


def _c_string(text: str) -> str:
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
        elif ch == "\r":
            out.append("\\r")
        elif 32 <= ord(ch) < 127:
            out.append(ch)
        else:
            # emit raw UTF-8 bytes so .asciz stays byte-exact
            out.extend(f"\\{b:03o}" for b in ch.encode("utf-8"))
    return "".join(out)


def emit_rodata(strings: List[Tuple[str, str]]) -> List[str]:
    """Emit the per-method literal pool.

    Label prefixes encode the encoding:
      .LS_  UTF-16 code units, for ldstr
      .LD_  double, for ldc.r4/ldc.r8
      .LN_  NUL-terminated UTF-8, for field and type names
    """
    if not strings:
        return []
    out = ["    .section .rodata"]
    for label, text in strings:
        out.append(f"{label}:")
        if label.startswith(".LS_"):
            body = ", ".join(str(ord(ch) & 0xFFFF) for ch in text) if text else "0"
            out.append(f"    .short {body}")
        elif label.startswith(".LD_"):
            out.append(f"    .double {text}")
        else:
            out.append(f'    .asciz "{_c_string(text)}"')
    out.append("")
    return out


def stub_body(fn: str, label: str) -> str:
    """A real function symbol with no semantics: every method gets assembly."""
    return "\n".join([
        f"    .globl {fn}",
        f"    .type {fn}, @function",
        f"{fn}:",
        "    push %rbp",
        "    mov %rsp, %rbp",
        f"    lea {label}(%rip), %rdi",
        "    call shim_unimplemented",
        "    xor %eax, %eax",
        "    pop %rbp",
        "    ret",
        f"    .size {fn}, .-{fn}",
    ])


def transpile(methods: List[Method], force: bool = False
              ) -> Tuple[str, Dict[str, str], List[dict]]:
    externals: Dict[str, str] = {}
    bodies: List[str] = []
    rodata: List[Tuple[str, str]] = []
    report: List[dict] = []
    types = set()
    stubs: List[str] = []

    symbols = SymbolTable()
    seen = set()
    for m in methods:
        symbols.register(m)

    def emit_stub(m: Method, entry: dict) -> None:
        fn = symbols.register(m)
        label = f".LSTUB_{mangle(fn)}"
        rodata.append((label, f"{m.full_name}  [{entry['reason']}]"))
        stubs.append(stub_body(fn, label))
        entry["tier"] = "stub"
        entry["symbol"] = fn

    for m in methods:
        key = (m.owner, m.name, tuple(p.raw for p in m.params))
        entry = {"method": m.full_name, "params": [p.raw for p in m.params],
                 "ok": False, "tier": "rejected", "reason": ""}
        if key in seen:
            entry["reason"] = "duplicate declaration (same owner, name and signature)"
            if force:
                entry["tier"] = "duplicate"
                entry["reason"] += "; shares the symbol already emitted"
            report.append(entry)
            continue
        seen.add(key)
        types.add(m.owner)
        for ins in m.instructions:
            if ins.opcode == "newobj":
                ref = parse_call_ref(ins.operand)
                if ref.owner:
                    types.add(ref.owner)

        if m.extern:
            entry["reason"] = "P/Invoke declaration (native import, no IL body)"
            if force:
                emit_stub(m, entry)
            report.append(entry)
            continue
        if not m.instructions:
            entry["reason"] = "no IL body (abstract or extern)"
            if force:
                emit_stub(m, entry)
            report.append(entry)
            continue

        try:
            analyze(m, strict=not (force and m.has_eh))
            em = Emitter(m, externals, symbols, force=force)
            bodies.append(em.emit())
            rodata.extend(em.strings)
            entry["ok"] = True
            entry["tier"] = "approximate" if (force and m.has_eh) else "exact"
            entry["symbol"] = em.fn
        except Unsupported as exc:
            entry["reason"] = exc.what
            if force:
                try:
                    analyze(m, strict=False)
                    em = Emitter(m, externals, symbols, force=True)
                    bodies.append(em.emit())
                    rodata.extend(em.strings)
                    entry["tier"] = "approximate"
                    entry["symbol"] = em.fn
                except Exception:
                    emit_stub(m, entry)
        except Exception as exc:  # noqa: BLE001
            entry["reason"] = f"{type(exc).__name__}: {exc}"
            if force:
                emit_stub(m, entry)
        report.append(entry)

    parts: List[str] = ["    .text", ""]
    parts.extend(bodies)
    parts.extend(stubs)
    parts.append(".Lnullmsg:")
    parts.append('    .asciz "null receiver"')
    # One label per mangled name: distinct type names can mangle identically.
    labels: Dict[str, str] = {}
    for name in sorted(types):
        labels.setdefault(mangle(name), name)
    for mangled, name in sorted(labels.items()):
        parts.append(f".Ltype_{mangled}:")
        parts.append(f'    .asciz "{_c_string(name)}"')
    parts.extend(emit_rodata(rodata))
    parts.append('    .section .note.GNU-stack,"",@progbits')
    return "\n".join(parts), externals, report


def main(argv: List[str]) -> int:
    ap = argparse.ArgumentParser(prog="il2asm", description=__doc__)
    ap.add_argument("inputs", nargs="+", help=".il files from `ilspycmd -il`")
    ap.add_argument("-o", "--outdir", default="build", help="output directory")
    ap.add_argument("--filter", default="", help="only methods whose name contains this")
    ap.add_argument("--force", action="store_true",
                    help="emit assembly for every method: approximate lowering, then stubs")
    args = ap.parse_args(argv)

    total = ok = 0
    tiers: Dict[str, int] = {}
    all_report: List[dict] = []
    all_externals: Dict[str, str] = {}
    outdir = Path(args.outdir)
    outdir.mkdir(parents=True, exist_ok=True)

    for path in args.inputs:
        text = Path(path).read_text(encoding="utf-8", errors="replace")
        methods = parse_il(text, source_file=str(path))
        if args.filter:
            methods = [m for m in methods if args.filter in m.name]

        asm, externals, report = transpile(methods, force=args.force)
        (outdir / f"{Path(path).stem}.S").write_text(asm)
        all_report.extend(report)
        all_externals.update(externals)
        total += len(report)
        ok += sum(1 for r in report if r["ok"])
        for r in report:
            tiers[r.get("tier", "rejected")] = tiers.get(r.get("tier", "rejected"), 0) + 1

    lack: Dict[str, int] = {}
    for r in all_report:
        if not r["ok"]:
            key = r["reason"]
            key = key.split(" '")[0][:70] + (" ..." if len(key) > 70 else "")
            lack[key] = lack.get(key, 0) + 1

    print(f"methods     : {total}")
    if total:
        print(f"transpiled  : {ok}  ({100.0 * ok / total:.1f}%)")
        emitted = total - tiers.get("rejected", 0)
        print(f"emitted     : {emitted}  ({100.0 * emitted / total:.1f}%)")
        for tier in ("exact", "approximate", "stub", "rejected"):
            if tier in tiers:
                print(f"  {tier:12} {tiers[tier]}")
    print(f"rejected    : {total - ok}")
    if lack:
        print("\nrejection reasons:")
        for reason, count in sorted(lack.items(), key=lambda kv: -kv[1])[:15]:
            print(f"  {count:5d}  {reason}")
    print(f"\nexternal symbols required: {len(all_externals)}")
    for sym, sig in sorted(all_externals.items())[:25]:
        print(f"  {sym}   <- {sig}")
    if len(all_externals) > 25:
        print(f"  ... {len(all_externals) - 25} more")

    (outdir / "report.json").write_text(json.dumps(
        {"total": total, "transpiled": ok, "methods": all_report,
         "externals": all_externals}, indent=2))
    (outdir / "externals.txt").write_text("\n".join(sorted(all_externals)) + "\n")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
