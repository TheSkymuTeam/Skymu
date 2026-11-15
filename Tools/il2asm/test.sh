#!/usr/bin/env bash
# test.sh - differential test: transpiled x86-64 vs the CLR.
#
# Transpiles BuildInfo (copied verbatim from Skymu/Classes/Versioning.cs),
# links it natively against the shim, and compares its output with the same
# code running on .NET. Any divergence is a transpiler bug.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export DOTNET_ROOT="${DOTNET_ROOT:-$HOME/.dotnet}"
export PATH="$DOTNET_ROOT:$DOTNET_ROOT/tools:$PATH"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
cd "$HERE"

echo "building reference assembly"
dotnet build samples/Versioning/Skymu.Versioning.csproj -c Release -o samples/Versioning/out >/dev/null

echo "decompiling to IL"
ilspycmd -il samples/Versioning/out/Skymu.Versioning.dll > samples/Versioning/Skymu.Versioning.il 2>/dev/null

echo "transpiling"
python3 -m il2asm.cli samples/Versioning/Skymu.Versioning.il -o build/versioning | sed 's/^/  /'

echo "linking against shim"
gcc -O1 -fno-pie -no-pie -o build/versioning/harness \
    tests/versioning_harness.c \
    build/versioning/Skymu.Versioning.S \
    shim/shim.c

echo "running native vs CLR"
./build/versioning/harness > build/versioning/native.txt
dotnet run --project samples/Versioning.Reference -c Release 2>/dev/null > build/versioning/clr.txt

if diff -u build/versioning/clr.txt build/versioning/native.txt; then
    echo "PASS: native output matches the CLR ($(wc -l < build/versioning/native.txt) cases)"
else
    echo "FAIL: outputs diverge" >&2
    exit 1
fi
