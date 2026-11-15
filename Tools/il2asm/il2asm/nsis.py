r"""Translate an NSIS installer script into x86-64 assembly.

NSIS has no IL. `makensis` compiles the script into a Windows PE that ships its
own bytecode interpreter. This module takes the other route: each script
statement becomes real machine code.

    Function / Section  ->  a native function symbol
    Call X              ->  call nsis_Function_X
    ${If} / ${Else}     ->  shim_nsis_compare + jcc
    StrCpy / Pop        ->  stores into a variable cell
    installer commands  ->  call shim_nsis_*   (implemented in shim/nsis.c)

Strings that mix literals and variables (`"$INSTDIR\desktop.ini"`) are composed
at run time with `shim_nsis_concat`, because an NSIS variable is a mutable
string, not a symbol. Commands that only exist to drive the MUI wizard
(`nsDialogs::*`, `${NSD_*}`, `SendMessage`, `!insertmacro MUI_PAGE_*`) have no
native equivalent, so they are recorded and reported rather than invented.

The result links and runs as a dry-run installer: it walks the real install
sequence and prints every action.

    python3 -m il2asm.nsis archive/NSIS -o NSIS --assets
"""

import argparse
import re
import sys
from pathlib import Path
from typing import Dict, List, Optional, Tuple

ARG_REGS = ["%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9"]

# Script command -> (runtime entry point, argument shape).
COMMANDS: Dict[str, Tuple[str, str]] = {
    "SetOutPath": ("shim_nsis_set_out_path", "one"),
    "CreateDirectory": ("shim_nsis_mkdir", "one"),
    "RMDir": ("shim_nsis_rmdir", "flag_path"),
    "Delete": ("shim_nsis_delete", "one"),
    "File": ("shim_nsis_file", "flag_path"),
    "WriteIniStr": ("shim_nsis_ini_write", "four"),
    "WriteRegStr": ("shim_nsis_reg_write", "four"),
    "WriteRegDWORD": ("shim_nsis_reg_write", "four"),
    "DeleteRegKey": ("shim_nsis_reg_delete_key", "two"),
    "CreateShortCut": ("shim_nsis_shortcut", "two"),
    "WriteUninstaller": ("shim_nsis_write_uninstaller", "one"),
    "SetFileAttributes": ("shim_nsis_set_attrs", "two"),
    "SetOverwrite": ("shim_nsis_set_overwrite", "one"),
    "SetAutoClose": ("shim_nsis_set_autoclose", "one"),
    "HideWindow": ("shim_nsis_hide_window", "none"),
    "MessageBox": ("shim_nsis_message_box", "messagebox"),
    "Abort": ("shim_nsis_abort", "none"),
    "nsExec::ExecToLog": ("shim_nsis_exec", "one"),
    "System::Call": ("shim_nsis_system_call", "one"),
}

# Constants the wizard includes provide, resolved at translation time.
BUILTIN_DEFINES: Dict[str, str] = {
    "BST_CHECKED": "1",
    "BST_UNCHECKED": "0",
    "SW_HIDE": "0",
    "SW_SHOW": "5",
    "IDYES": "6",
    "IDNO": "7",
    "IDOK": "1",
    "IDCANCEL": "2",
    "MB_OK": "0",
    "NSIS_MAX_STRLEN": "1024",
    "WM_SETFONT": "0x30",
}

DEFAULT_VARS: Dict[str, str] = {
    "INSTDIR": r"C:\Program Files\Skymu",
    "PROGRAMFILES": r"C:\Program Files",
    "PROGRAMFILES64": r"C:\Program Files",
    "APPDATA": r"C:\Users\User\AppData\Roaming",
    "SMPROGRAMS": r"C:\Users\User\AppData\Roaming\Microsoft\Windows\Start Menu\Programs",
    "DESKTOP": r"C:\Users\User\Desktop",
    "TEMP": r"C:\Windows\Temp",
}

SEGMENT = re.compile(r"\$([A-Za-z0-9_]+)")


def mangle(name: str) -> str:
    cleaned = "".join(ch if ch.isalnum() else "_" for ch in name)
    while "__" in cleaned:
        cleaned = cleaned.replace("__", "_")
    return cleaned.strip("_") or "anon"


def var_sym(token: str) -> str:
    name = token[1:] if token.startswith("$") else token
    name = name.strip("{}")
    return "nsis_var_" + mangle(name)


def func_sym(name: str) -> str:
    return "nsis_Function_" + mangle(name)


def section_sym(name: str) -> str:
    return "nsis_Section_" + mangle(name)


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


def strip_comment(line: str) -> str:
    out, quote = [], None
    for ch in line:
        if quote:
            out.append(ch)
            if ch == quote:
                quote = None
        elif ch in "\"'":
            quote = ch
            out.append(ch)
        elif ch == ";":
            break
        else:
            out.append(ch)
    return "".join(out).strip()


def tokenize(line: str) -> List[str]:
    """Split like NSIS: whitespace separates, quotes group and are removed.

    An empty quoted token (`""`) is kept, because `WriteRegStr HKLM k "" v`
    passes an empty value name and dropping it would shift every later
    argument.
    """
    out: List[str] = []
    cur: List[str] = []
    quote: Optional[str] = None
    opened = False
    for ch in line:
        if quote is not None:
            if ch == quote:
                quote = None
            else:
                cur.append(ch)
        elif ch in "\"'":
            quote = ch
            opened = True
        elif ch.isspace():
            if opened or cur:
                out.append("".join(cur))
                cur = []
                opened = False
        else:
            cur.append(ch)
    if opened or cur:
        out.append("".join(cur))
    return out


def expand(text: str, defines: Dict[str, str]) -> str:
    def repl(m: "re.Match[str]") -> str:
        return defines.get(m.group(1), m.group(0))

    for _ in range(6):
        prev = text
        text = re.sub(r"\$\{([A-Za-z0-9_]+)\}", repl, text)
        if text == prev:
            break
    return text.replace("$(^Name)", defines.get("PRODUCT_NAME", ""))


def segments(token: str) -> List[Tuple[str, str]]:
    """Split a token into literal and `$variable` pieces."""
    out: List[Tuple[str, str]] = []
    pos = 0
    for m in SEGMENT.finditer(token):
        if m.start() > pos:
            out.append(("lit", token[pos:m.start()]))
        out.append(("var", m.group(1)))
        pos = m.end()
    if pos < len(token):
        out.append(("lit", token[pos:]))
    if not out:
        out.append(("lit", token))
    return out


class Emitter:
    def __init__(self, defines: Dict[str, str]):
        self.defines = defines
        self.text: List[str] = []
        self.rodata: List[str] = []
        self.strings: Dict[str, str] = {}
        self.vars: List[str] = []
        self.labels = 0
        self.notes: List[str] = []
        self.ui_lines: List[str] = []
        self.counts = {"exact": 0, "ui": 0, "meta": 0}

    # ------------------------------------------------------------- resources
    def string(self, text: str) -> str:
        if text not in self.strings:
            label = f".Lnsis_s{len(self.strings)}"
            self.strings[text] = label
            self.rodata.append(f"{label}:")
            self.rodata.append(f'    .asciz "{gas_string(text)}"')
        return self.strings[text]

    def declare(self, token: str) -> str:
        sym = var_sym(token)
        if sym not in self.vars:
            self.vars.append(sym)
        return sym

    def label(self, kind: str) -> str:
        self.labels += 1
        return f".Lnsis_{kind}_{self.labels}"

    # ----------------------------------------------------- value composition
    def load_into(self, seg: Tuple[str, str], reg: str) -> None:
        kind, text = seg
        if kind == "var":
            self.text.append(f"    mov {self.declare('$' + text)}(%rip), {reg}")
        else:
            self.text.append(f"    lea {self.string(text)}(%rip), {reg}")

    def load_token(self, token: str, reg: str) -> None:
        r"""Leave a pointer to the token's value in `reg`.

        A token may mix text and variables (`$INSTDIR\desktop.ini`), so the
        pieces are joined at run time. `%rbx` is the accumulator and is saved
        by every generated function.
        """
        parts = segments(token)
        if len(parts) == 1:
            self.load_into(parts[0], reg)
            return
        self.load_into(parts[0], "%rbx")
        for seg in parts[1:]:
            self.text.append("    mov %rbx, %rdi")
            self.load_into(seg, "%rsi")
            self.text.append("    call shim_nsis_concat")
            self.text.append("    mov %rax, %rbx")
        if reg != "%rbx":
            self.text.append(f"    mov %rbx, {reg}")

    def call_shim(self, name: str, values: List[str]) -> None:
        slots = max(1, len(values))
        size = ((slots * 8 + 15) // 16) * 16
        self.text.append(f"    sub ${size}, %rsp")
        for i, value in enumerate(values):
            self.load_token(value, "%rax")
            self.text.append(f"    mov %rax, {i * 8}(%rsp)")
        for i in range(min(len(values), len(ARG_REGS))):
            self.text.append(f"    mov {i * 8}(%rsp), {ARG_REGS[i]}")
        self.text.append(f"    call {name}")
        self.text.append(f"    add ${size}, %rsp")
        self.text.append("    mov %rax, nsis_result(%rip)")
        self.counts["exact"] += 1

    def ui(self, line: str) -> None:
        self.ui_lines.append(line)
        self.text.append(f"    # ui: {line}")
        self.text.append(f"    lea {self.string(line)}(%rip), %rdi")
        self.text.append("    call shim_nsis_unimplemented")
        self.text.append("    mov %rax, nsis_result(%rip)")
        self.counts["ui"] += 1

    def store(self, token: str) -> None:
        sym = self.declare(token)
        self.text.append(f"    mov %rax, {sym}(%rip)")

    # --------------------------------------------------------- command args
    def command_args(self, head: str, toks: List[str]) -> List[str]:
        shape = COMMANDS[head][1]
        rest = toks[1:]
        if shape == "none":
            return []
        if shape == "one":
            return rest[:1] or [""]
        if shape == "two":
            return (rest + ["", ""])[:2]
        if shape == "four":
            return (rest + ["", "", "", ""])[:4]
        if shape == "messagebox":
            return (rest + ["", ""])[:2]
        if shape == "flag_path":
            if len(rest) >= 2 and rest[0].startswith("/"):
                return [rest[0], rest[1]]
            return ["", rest[0] if rest else ""]
        raise AssertionError(shape)

    # ------------------------------------------------------------ statements
    def statement(self, toks: List[str], line: str, index: int,
                  message_jumps: Dict[Tuple[int, str], str], ret_label: str) -> None:
        head = toks[0]

        if head == "Call" and len(toks) >= 2:
            self.text.append(f"    call {func_sym(toks[1])}")
            self.counts["exact"] += 1
            return

        if head == "StrCpy" and len(toks) >= 2:
            value = " ".join(toks[2:]) if len(toks) > 2 else ""
            self.load_token(value, "%rax")
            self.store(toks[1])
            self.counts["exact"] += 1
            return

        if head == "Pop" and len(toks) >= 2:
            self.text.append("    mov nsis_result(%rip), %rax")
            self.store(toks[1])
            self.counts["exact"] += 1
            return

        if head == "${NSD_GetState}" and len(toks) >= 3:
            # The dialog does not exist in a dry run; a radio button that was
            # never created reads as unchecked.
            self.ui_lines.append(line)
            self.text.append(f"    lea {self.string('0')}(%rip), %rax")
            self.store(toks[2])
            self.counts["ui"] += 1
            return

        if head == "Abort":
            self.call_shim("shim_nsis_abort", [])
            self.text.append("    mov $1, %eax")
            self.text.append(f"    jmp {ret_label}")
            return

        if head in COMMANDS:
            name, shape = COMMANDS[head]
            self.call_shim(name, self.command_args(head, toks))

            if head == "System::Call":
                for m in re.finditer(r"\.r(\d+)", line):
                    self.text.append("    mov nsis_result(%rip), %rax")
                    self.store("$" + m.group(1))

            if shape == "messagebox":
                for cond in ("IDYES", "IDNO", "IDOK", "IDCANCEL"):
                    target = message_jumps.get((index, cond))
                    if target:
                        value = self.defines.get(cond, BUILTIN_DEFINES[cond])
                        self.text.append(f"    cmpq ${value}, %rax")
                        self.text.append(f"    je {target}")
            return

        self.ui(line)

    # ----------------------------------------------------------- conditions
    def conditional(self, toks: List[str], stack: List[Tuple[str, str]]) -> None:
        end = self.label("end")
        other = self.label("else")
        stack.append((end, other))
        if len(toks) < 3:
            self.text.append("    # unparsed condition")
            self.counts["ui"] += 1
            return
        lhs, op = toks[0], toks[1]
        rhs = " ".join(toks[2:])
        self.text.append("    sub $16, %rsp")
        self.load_token(lhs, "%rax")
        self.text.append("    mov %rax, 0(%rsp)")
        self.load_token(rhs, "%rax")
        self.text.append("    mov %rax, 8(%rsp)")
        self.text.append("    mov 0(%rsp), %rdi")
        self.text.append(f"    lea {self.string(op)}(%rip), %rsi")
        self.text.append("    mov 8(%rsp), %rdx")
        self.text.append("    call shim_nsis_compare")
        self.text.append("    add $16, %rsp")
        self.text.append("    test %eax, %eax")
        self.text.append(f"    jz {other}")
        self.counts["exact"] += 1

    def close_if(self, stack: List[Tuple[str, str]], jump: bool = False) -> None:
        if not stack:
            self.notes.append("${EndIf} without ${If}")
            return
        end, other = stack.pop()
        if jump:
            self.text.append(f"    jmp {end}")
            self.text.append(f"{other}:")
        self.text.append(f"{end}:")
        self.counts["exact"] += 1

    def otherwise(self, stack: List[Tuple[str, str]]) -> None:
        if not stack:
            self.notes.append("${Else} without ${If}")
            return
        end, other = stack[-1]
        self.text.append(f"    jmp {end}")
        self.text.append(f"{other}:")
        self.counts["exact"] += 1

    # --------------------------------------------------------------- blocks
    def plan_message_jumps(self, body: List[str]):
        at_index: Dict[int, List[str]] = {}
        goto_for: Dict[Tuple[int, str], str] = {}
        for i, line in enumerate(body):
            toks = tokenize(line)
            if not toks or toks[0] != "MessageBox":
                continue
            for k in range(3, len(toks) - 1):
                cond, target = toks[k], toks[k + 1]
                if cond in ("IDYES", "IDNO", "IDOK", "IDCANCEL") \
                        and re.fullmatch(r"\+\d+", target):
                    label = self.label("msg")
                    at_index.setdefault(i + int(target[1:]), []).append(label)
                    goto_for[(i, cond)] = label
        return at_index, goto_for

    def function(self, name: str, body: List[str]) -> None:
        self.block(func_sym(name), name, body)

    def section(self, name: str, body: List[str]) -> None:
        self.block(section_sym(name), 'Section "' + name + '"', body)

    def block(self, sym: str, title: str, body: List[str]) -> None:
        self.text.append(f"# {title}")
        self.text.append(f".globl {sym}")
        self.text.append(f".type {sym}, @function")
        self.text.append(f"{sym}:")
        self.text.append("    push %rbp")
        self.text.append("    mov %rsp, %rbp")
        self.text.append("    push %rbx")
        self.text.append("    sub $8, %rsp")

        ret_label = self.label("ret")
        at_index, goto_for = self.plan_message_jumps(body)
        stack: List[Tuple[str, str]] = []
        for i, line in enumerate(body):
            for label in at_index.get(i, []):
                self.text.append(f"{label}:")
            toks = tokenize(line)
            if not toks:
                continue
            head = toks[0]
            if head == "${If}":
                self.conditional(toks[1:], stack)
            elif head == "${Else}":
                self.otherwise(stack)
            elif head == "${EndIf}":
                self.close_if(stack)
            else:
                self.statement(toks, line, i, goto_for, ret_label)
        while stack:
            self.close_if(stack, jump=True)

        for label in at_index.get(len(body), []):
            self.text.append(f"{label}:")
        self.text.append("    xor %eax, %eax")
        self.text.append(f"{ret_label}:")
        self.text.append("    add $8, %rsp")
        self.text.append("    pop %rbx")
        self.text.append("    pop %rbp")
        self.text.append("    ret")
        self.text.append(f".size {sym}, .-{sym}")
        self.text.append("")


def entry_point(sym: str, calls: List[str]) -> List[str]:
    out = [f".globl {sym}", f".type {sym}, @function", f"{sym}:",
           "    push %rbp", "    mov %rsp, %rbp"]
    done = f".L{sym}_done"
    for call in calls:
        out.append(f"    call {call}")
        if call.endswith("_onInit"):
            # Abort in .onInit cancels the whole run, as in NSIS.
            out.append("    test %eax, %eax")
            out.append(f"    jne {done}")
    out.append("    xor %eax, %eax")
    out.append(f"{done}:")
    out.append("    pop %rbp")
    out.append("    ret")
    out.append(f".size {sym}, .-{sym}")
    out.append("")
    return out


def translate(script: Path) -> Tuple[str, Emitter, Dict[str, str]]:
    defines: Dict[str, str] = dict(BUILTIN_DEFINES)
    raw: List[Tuple[str, str]] = []

    for original in script.read_text(encoding="utf-8", errors="replace").splitlines():
        line = strip_comment(original)
        if not line:
            continue
        raw.append((original.strip(), line))

    for _, line in raw:
        m = re.match(r"^!define\s+(\w+)(?:\s+(.*))?$", line)
        if m:
            value = (m.group(2) or "").strip()
            if len(value) >= 2 and value[0] == value[-1] and value[0] in "\"'":
                value = value[1:-1]
            defines[m.group(1)] = value

    em = Emitter(defines)
    blocks: List[Tuple[str, str, List[str]]] = []
    current: Optional[Tuple[str, str, List[str]]] = None
    meta: Dict[str, str] = {}

    for display, line in raw:
        expanded = expand(line, defines)

        if line.startswith("!define"):
            em.counts["meta"] += 1
            continue
        if line.startswith("!include") or line.startswith("!insertmacro") \
                or line.startswith("Page "):
            em.counts["meta"] += 1
            continue

        m = re.match(r"^(Name|OutFile|InstallDir|InstallDirRegKey)\s+(.*)$", expanded)
        if m:
            meta[m.group(1)] = m.group(2).strip()
            em.counts["meta"] += 1
            continue
        if re.match(r"^(ShowInstDetails|ShowUnInstDetails|RequestExecutionLevel|"
                    r"SetCompressor|XPStyle|BrandingText|VIProductVersion|"
                    r"VIAddVersionKey|Unicode|Icon|UninstallIcon|Caption)\b", expanded):
            meta.setdefault("settings", "")
            meta["settings"] += expanded + "\n"
            em.counts["meta"] += 1
            continue

        m = re.match(r"^Function\s+(\S+)$", expanded)
        if m:
            current = ("function", m.group(1), [])
            continue
        if expanded == "FunctionEnd" and current:
            blocks.append(current)
            current = None
            continue

        m = re.match(r'^Section\s+"(.*)"$', expanded) or \
            re.match(r"^Section\s+(\S+)$", expanded)
        if m:
            current = ("section", m.group(1), [])
            continue
        if expanded == "SectionEnd" and current:
            blocks.append(current)
            current = None
            continue

        m = re.match(r"^Var\s+(\S+)$", expanded)
        if m:
            em.declare("$" + m.group(1))
            em.counts["meta"] += 1
            continue

        if current is not None:
            current[2].append(expanded)
        else:
            em.counts["meta"] += 1

    for kind, name, body in blocks:
        if kind == "function":
            em.function(name, body)
        else:
            em.section(name, body)

    have = {name for kind, name, _ in blocks if kind == "function"}
    sections = {name for kind, name, _ in blocks if kind == "section"}

    if ".onInit" in have:
        calls = [func_sym(".onInit")]
        if "Install" in sections:
            calls.append(section_sym("Install"))
        em.text.extend(entry_point("nsis_install", calls))
    if "un.onInit" in have:
        calls = [func_sym("un.onInit")]
        if "Uninstall" in sections:
            calls.append(section_sym("Uninstall"))
        if "un.onUninstSuccess" in have:
            calls.append(func_sym("un.onUninstSuccess"))
        em.text.extend(entry_point("nsis_uninstall", calls))

    return assemble_output(em, script, meta), em, meta


def assemble_output(em: Emitter, script: Path, meta: Dict[str, str]) -> str:
    out: List[str] = ["# generated by il2asm.nsis from " + script.name, "#"]
    for key in ("Name", "OutFile", "InstallDir", "InstallDirRegKey"):
        if key in meta:
            out.append(f"# {key}: {meta[key]}")
    if "settings" in meta:
        for line in meta["settings"].strip().splitlines():
            out.append(f"# {line}")
    if em.ui_lines:
        out.append(f"# {len(em.ui_lines)} wizard-only statements recorded, not invented:")
        for line in em.ui_lines:
            out.append(f"#   {line}")
    out.append("")
    out.append("    .text")
    out.append("")
    out.extend(em.text)

    out.append("    .data")
    out.append("    .globl nsis_result")
    out.append("nsis_result:")
    out.append("    .quad 0")
    for sym in em.vars:
        out.append(f".globl {sym}")
        out.append(f"{sym}:")
        name = sym[len("nsis_var_"):]
        if name in DEFAULT_VARS:
            out.append(f"    .quad .Lnsis_default_{name}")
        else:
            out.append("    .quad 0")
    out.append("")

    out.append("    .section .rodata")
    for name, value in DEFAULT_VARS.items():
        out.append(f".Lnsis_default_{name}:")
        out.append(f'    .asciz "{gas_string(value)}"')
    out.extend(em.rodata)
    out.append("")
    out.append('    .section .note.GNU-stack,"",@progbits')
    out.append("")
    return "\n".join(out)


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


def symbol_for(rel: str) -> str:
    cleaned = "".join(ch if ch.isalnum() else "_" for ch in rel).lower()
    while "__" in cleaned:
        cleaned = cleaned.replace("__", "_")
    return "res_" + cleaned.strip("_")


def main(argv: List[str]) -> int:
    ap = argparse.ArgumentParser(prog="il2asm.nsis", description=__doc__)
    ap.add_argument("path", help="an .nsi file or a directory containing them")
    ap.add_argument("-o", "--out", default=None,
                    help="output directory (default: next to each script)")
    ap.add_argument("--assets", action="store_true",
                    help="emit .incbin modules for the non-.nsi files too")
    args = ap.parse_args(argv)

    root = Path(args.path)
    if root.is_file():
        sources = [root]
        source_root = root.parent
    else:
        sources = sorted(root.rglob("*.nsi"))
        source_root = root
    if not sources:
        print("no .nsi files found", file=sys.stderr)
        return 1

    total = {"exact": 0, "ui": 0, "meta": 0}
    for script in sources:
        text, em, _ = translate(script)
        out_dir = Path(args.out) if args.out else script.parent
        out_dir.mkdir(parents=True, exist_ok=True)
        dest = out_dir / (script.name + ".S")
        dest.write_text(text, encoding="utf-8")

        for key in total:
            total[key] += em.counts[key]
        print(f"{script.name}: {em.counts['exact']} lowered, "
              f"{em.counts['ui']} ui-only, {em.counts['meta']} directives -> {dest}")

    assets = 0
    if args.assets:
        out_dir = Path(args.out) if args.out else source_root
        for path in sorted(source_root.rglob("*")):
            if not path.is_file() or path.suffix == ".nsi" or path.suffix == ".S":
                continue
            rel = path.relative_to(source_root).as_posix()
            dest = out_dir / (rel + ".S")
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_text(asset_module(rel, path.resolve(), symbol_for(rel)),
                            encoding="utf-8")
            assets += 1
            print(f"asset {rel}: .incbin -> {dest}")

    print(f"\ntotal: {total['exact']} lowered, {total['ui']} ui-only, "
          f"{total['meta']} directives, {assets} asset modules")
    print("ui-only statements are recorded in the header and passed to")
    print("shim_nsis_unimplemented; they are wizard chrome with no native")
    print("equivalent. Everything else executes.")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
