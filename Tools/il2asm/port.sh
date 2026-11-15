#!/usr/bin/env bash
# port.sh - one-shot pipeline: .NET assembly -> x86-64 assembly.
#
#   ./port.sh <project.csproj | assembly.dll> [outdir]
#
# Stages: build (if a project) -> ilspycmd -il -> il2asm -> gcc -c
# Prints a coverage summary and leaves <name>.S next to the report.
set -uo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export DOTNET_ROOT="${DOTNET_ROOT:-$HOME/.dotnet}"
export PATH="$DOTNET_ROOT:$DOTNET_ROOT/tools:$PATH"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

target="${1:-}"
if [ -z "$target" ]; then
    echo "usage: $0 <project.csproj|assembly.dll> [outdir]" >&2
    exit 2
fi
name="$(basename "${target%.*}")"
out="${2:-$HERE/build/port/$name}"
mkdir -p "$out"

dll=""
if [[ "$target" == *.csproj ]]; then
    build_dir="$out/pkg"
    mkdir -p "$build_dir"
    echo "[1/4] building $target"
    if ! dotnet build "$target" -c Release -o "$build_dir" >"$out/build.log" 2>&1; then
        echo "      build failed, see $out/build.log" >&2
        tail -5 "$out/build.log" >&2
        exit 1
    fi
    # Prefer the assembly named like the project, else the only non-framework dll.
    cand="$build_dir/$(grep -oP '(?<=<AssemblyName>)[^<]+' "$target" 2>/dev/null | head -1).dll"
    if [ -f "$cand" ]; then
        dll="$cand"
    else
        dll="$(ls "$build_dir"/$name.dll 2>/dev/null | head -1)"
    fi
    if [ -z "$dll" ]; then
        dll="$(ls "$build_dir"/*.dll | grep -viE 'bifrost|bouncy|yggdrasil|google|concentus|naudio|nlayer|markdig|qrcoder|system|microsoft|netstandard|newtonsoft|sharpzip' | head -1)"
    fi
else
    dll="$target"
fi

if [ ! -f "$dll" ]; then
    echo "no assembly found to decompile" >&2
    exit 1
fi

echo "[2/4] decompiling $(basename "$dll")"
if ! ilspycmd -il "$dll" >"$out/source.il" 2>"$out/ilspy.log"; then
    echo "      ilspycmd failed, see $out/ilspy.log" >&2
    exit 1
fi

echo "[3/4] lowering IL to x86-64"
( cd "$HERE" && python3 -m il2asm.cli "$out/source.il" -o "$out" ) | sed 's/^/      /'

asm="$(ls "$out"/*.S 2>/dev/null | head -1)"
if [ -z "$asm" ]; then
    echo "      no assembly produced" >&2
    exit 1
fi

echo "[4/4] assembling $(basename "$asm")"
if gcc -c -o "$out/$(basename "${asm%.S}").o" "$asm" 2>"$out/as.log"; then
    echo "      ok -> $out/$(basename "${asm%.S}").o"
else
    echo "      assembler rejected the output ($(grep -c Error "$out/as.log") errors)" >&2
    head -3 "$out/as.log" >&2
    exit 1
fi

echo
echo "output: $asm"
echo "report: $out/report.json"
echo "note  : linking still requires the shim plus every symbol in externals.txt"
