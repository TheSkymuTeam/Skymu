# This repository is now assembly

Every .NET project in this repository was transpiled from IL to x86-64 GAS
assembly and the `.S` files were placed where the original projects used to be.
The C# sources, XAML, csproj files and the solution are intact in
[`archive/`](archive/).

This was produced by [`Tools/il2asm`](Tools/il2asm), a real IL→x86-64
transpiler: `dotnet build` → `ilspycmd -il` → stack-typed lowering → `.S`.

## What is where

| path | contents |
|---|---|
| `Skymu/**/*.S` | **2,132 modules**, one per original file, mirroring the original tree exactly |
| `Bifrost/Bifrost.S` | TLS + WebSocket stack (200 methods) |
| `Yggdrasil/Yggdrasil.S` | models and HTTP API library (228 methods) |
| `Plugins/Discord/Discord.S` | Discord client (2,316 methods) |
| `Plugins/Tox/Tox.S` | Tox protocol plugin (844 methods) |
| `Plugins/Matrix/Matrix.S` | Matrix plugin (198 methods) |
| `Plugins/Stub/Stub.S` | plugin template (62 methods) |
| `Plugins/Chat Completions/Chat Completions.S` | chat completion plugin (73 methods) |
| `Skymu.Tests/Skymu.Tests.S` | test assembly (576 methods) |
| `archive/` | **every original project and `Skymu.sln`** |
| `Tools/il2asm/` | the transpiler, shim, tests and `out-native/` snapshots |

`UserServer/` (PHP), `NSIS/`, `Images/`, `Tools/` are not .NET and were left
alone.

## The Skymu tree is 1:1 with the original

`Skymu.S` and `resources.S` were split by
[`Tools/il2asm/il2asm/split.py`](Tools/il2asm/il2asm/split.py) into one module
per original file:

```
archive/Skymu/App.xaml.cs        ->  Skymu/App.xaml.cs.S          (2,087 method bodies)
archive/Skymu/Classes/Colorizer.cs -> Skymu/Classes/Colorizer.cs.S
archive/Skymu/App.xaml           ->  Skymu/App.xaml.S             (.incbin of the XAML)
archive/Skymu/Emoji/abe/...png   ->  Skymu/Emoji/abe/...png.S     (.incbin of the image)
```

- 2,132 original files → 2,132 `.S` files, same relative paths, `.S` appended.
- `.cs` files carry the methods declared in that file (plus the string, field,
  type and stub labels those methods reference), so each module assembles
  standalone.
- Every non-`.cs` file — XAML, resx, json, png, wav, dll, everything — becomes
  a `.incbin` module exposing `res_<path>` and `res_<path>_end`.
- Compiler-generated types (anonymous types, attribute types) that have no
  source file are placed in `Skymu/obj/net5.0-windows/Release/Skymu_Content.g.cs.S`.

All 2,132 modules assemble with `gcc -c`. 2,087 method symbols, no duplicates.

## Method tiers

Every method in every assembly has a symbol. Not every method is correct.

| tier | count | meaning |
|---|---:|---|
| **exact** | 4,692 | Stack depth and types proven at every instruction. The code does what the IL said. |
| **approximate** | 963 | The analysis could not prove the method (`.try`/`.catch` regions, depth conflicts, unsupported opcodes) and was forced through. Assembly exists; control flow around exception handlers is **not** preserved and results are not trustworthy. |
| **stub** | 881 | No IL body exists (P/Invoke declarations, abstract members) or the method failed structurally. The symbol exists and calls `shim_unimplemented`, which prints the method name and aborts. |

Full per-method breakdown, including the rejection reason for each forced
method: `Tools/il2asm/build/force/<assembly>/report.json`.

## How to assemble

Every `.S` file assembles on its own with `gcc`:

```sh
for f in Skymu/**/*.S Bifrost/Bifrost.S Yggdrasil/Yggdrasil.S \
         Skymu.Tests/Skymu.Tests.S Plugins/*/*.S; do
    gcc -c -o "/tmp/$(basename "$f" .S).o" "$f"
done
```

Requires only `gcc` and an x86-64 Linux host. No .NET SDK is needed to
assemble; the SDK is only needed to re-run the transpiler against `archive/`.

The Skymu modules use absolute `.incbin` paths into `archive/`. If the
repository moves, re-run the split (which regenerates every module and its
paths):

```sh
cd Tools/il2asm
python3 -m il2asm.split --asm out-native/Skymu.S \
    --report build/force/Skymu/report.json \
    --sources ../../archive/Skymu --out ../../Skymu --assets
```

## Re-running the pipeline

```sh
cd Tools/il2asm
./test.sh                                     # differential test vs the CLR
./port.sh ../../archive/Yggdrasil/Yggdrasil.csproj           # one project
python3 -m il2asm.cli <file>.il -o out --force               # forced mode
```

The SDK is installed locally at `~/.dotnet` (8.0.428) with `ilspycmd`
9.1.0.7988. WPF builds with `-p:EnableWindowsTargeting=true -f net5.0-windows`,
which is how `Skymu.S` was produced.

## What this is not

Assembly for a method is not a working method, and this is not a working
program.

1. **Nothing here links yet.** Each assembly still needs the runtime shim plus
   every symbol in `Tools/il2asm/build/force/<assembly>/externals.txt` — 1,092
   for Discord, ~55 for Yggdrasil.
2. **No exception handling exists.** Any `approximate` method that relies on
   `try`/`finally` will misbehave at run time. There is no unwinder.
3. **No garbage collector.** The shim never frees memory.
4. **WPF itself was not ported.** `Skymu.S` is the application logic as machine
   code. XAML parsing, the dependency-property system, data binding and the
   DirectX compositor are the runtime the app sits on, and they were never C#.
   the `.incbin` modules preserve the XAML bytes; nothing interprets them.
5. **The `exact` tier is the only tier that carries its original semantics.**

The transpiler rejects what it cannot lower correctly rather than emitting
plausible wrong code; `--force` exists solely so that every method acquires a
symbol, which is what "make everything assembly" requires.

## Restoring the source tree

```sh
rm -rf Skymu Bifrost Yggdrasil Skymu.Tests Plugins
mv archive/Skymu archive/Bifrost archive/Yggdrasil archive/Skymu.Tests archive/Plugins .
mv archive/Skymu.sln .
```

The swap is uncommitted, so `git checkout -- .` also restores every original
file.
