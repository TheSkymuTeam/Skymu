#!/usr/bin/env bash
# nsis.sh - translate the NSIS scripts, assemble every module, link and run.
#
#   ./nsis.sh            # regenerate NSIS/*.S, assemble, dry-run
#   ./nsis.sh --check    # each .S is already up to date; just verify
#
# The dry run prints the install and uninstall sequence that the generated
# entry points execute. It touches no real files, registry or shortcuts.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$HERE/../.." && pwd)"
OUT="$HERE/build/nsis"
mkdir -p "$OUT"

cd "$HERE"

if [[ "${1:-}" != "--check" ]]; then
    echo "[1/4] translating archive/NSIS -> NSIS"
    python3 -m il2asm.nsis "$ROOT/archive/NSIS" -o "$ROOT/NSIS" --assets \
        | sed 's/^/      /'
fi

echo "[2/4] assembling every NSIS module"
n=0
for f in "$ROOT"/NSIS/*.S; do
    gcc -c -o "$OUT/$(basename "${f%.S}").o" "$f"
    n=$((n + 1))
done
echo "      $n modules, 0 failures"

echo "[3/4] linking the dry-run installer"
gcc -O1 -o "$OUT/nsis_dryrun" \
    "$HERE/tests/nsis_dryrun.c" \
    "$HERE/shim/nsis.c" \
    "$ROOT/NSIS/SkymuSetup.nsi.S"
gcc -O1 -o "$OUT/nsis_dryrun_beta" \
    "$HERE/tests/nsis_dryrun.c" \
    "$HERE/shim/nsis.c" \
    "$ROOT/NSIS/SkymuBetaSetup.nsi.S"

echo "[4/4] running"
"$OUT/nsis_dryrun" >"$OUT/install.txt"
NSIS_LEGACY=1 "$OUT/nsis_dryrun" >"$OUT/install-legacy.txt"
"$OUT/nsis_dryrun_beta" >"$OUT/install-beta.txt"

python3 - "$OUT/install.txt" "$OUT/install-legacy.txt" <<'PY'
import sys
text = open(sys.argv[1], encoding="utf-8").read()
legacy = open(sys.argv[2], encoding="utf-8").read()
required = [
    "SetOutPath         C:\\Program Files\\Skymu",
    "File /r            ..\\Skymu\\bin\\Skymu.Core\\Release\\*",
    "WriteUninstaller   C:\\Program Files\\Skymu\\uninst.exe",
    "WriteRegStr        HKLM | Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Skymu",
    "RMDir /r           C:\\Program Files\\Skymu",
    "DeleteRegKey       HKLM | Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Skymu",
    "uninstall returned 0",
]
missing = [line for line in required if line not in text]
if missing:
    for line in missing:
        print("MISSING:", line)
    sys.exit(1)
if "File /r            ..\\Skymu\\bin\\Skymu.Legacy\\Release\\*" not in legacy:
    print("MISSING: legacy branch did not select the Legacy payload")
    sys.exit(1)
if "file /r            ..\\Skymu\\bin\\Skymu.Core\\Release\\*" in legacy.lower():
    print("both File /r branches ran")
    sys.exit(1)
print(f"      {text.count('[nsis')} actions, install and uninstall both returned 0")
print("      legacy branch selected the Legacy payload")
PY

echo "PASS: $OUT/install.txt"
