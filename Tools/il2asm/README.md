# il2asm

Transpiles managed .NET IL into readable x86-64 assembly, then links it
natively against a small C runtime shim.

This is the automated half of "port the .NET code to assembly". It is a real
compiler pass, not a demo: it lowers 83.6% of the methods that actually have IL
bodies across this repository, and every emitted `.S` file assembles with `gcc`.

```
C#  ──dotnet build──►  .dll  ──ilspycmd -il──►  IL text  ──il2asm──►  .S  ──gcc──►  .o
```

## Quick start

```sh
./test.sh                                   # differential test vs the CLR
./port.sh ../../Bifrost/Bifrost.csproj      # full pipeline on one project
./port.sh ../../Skymu/Skymu.csproj          # WPF app (see limitations)
```

`test.sh` transcribes `BuildInfo` from `Skymu/Classes/Versioning.cs`, transpiles
it, links it natively, and diffs the result against the same code running on
.NET. It is the correctness gate — if it fails, the transpiler is wrong, not the
code under test.

## Layout

```
il2asm/ir.py      instruction/method/type model
il2asm/parse.py   ILSpy text parser; builds fully-qualified owners from .class nesting
il2asm/lower.py   stack analysis, opcode semantics, symbol table
il2asm/emit.py    x86-64 emission
il2asm/cli.py     driver, rodata pool, coverage report
il2asm/split.py   splits one .S back into one module per original file
shim/             the runtime: object model, strings, arrays, boxing, BCL subset
tests/            differential harness
samples/          verbatim code extracted from the repository
```

## Runtime model

There is no CLR underneath. The shim provides the smallest object model that
lets transpiled methods execute:

- **Objects** are a 16-byte header (`type`, `len`) plus no fixed field layout.
  Fields are addressed *by name* at run time through `shim_field_slot`, which is
  slow and deliberate: the transpiler has no metadata to compute offsets from.
  A production version would emit a layout table per type.
- **Strings** are the header plus UTF-16 code units at offset 16.
- **Arrays** are the header plus one 8-byte slot per element, regardless of
  element type. This wastes memory on `byte[]` and is the main structural
  shortcut in the shim.
- **Boxing** materializes an object with the value in a `value__` slot, so
  `String.Concat(object, object)` can recover it.
- **Evaluation stack** lives in the native frame as fixed slots, so `rsp` never
  moves after the prologue and every call stays 16-byte aligned.
- **GC**: none. Memory is never freed. Prototype limitation, not an oversight.
- **Exceptions**: none. `shim_throw` aborts.

## What it refuses, and why

Rejections are explicit and counted; the transpiler never emits plausible
looking wrong code. Current reasons, in order of frequency:

| reason | count | what it needs |
|---|---:|---|
| exception handling region | 174 | DWARF or setjmp/longjmp unwinding plus finally semantics |
| inconsistent stack depth | 118 | correct flow merge across EH boundaries |
| stack underflow | ~140 | same root cause: handler code entered without its try-block |
| > 6 arguments | 20 | stack-passed arguments beyond the SysV register window |
| P/Invoke / no IL body | 524 | nothing to transpile — already native |

Floating point is rejected rather than approximated with integer instructions.

## Measured coverage

Methods that have an IL body (P/Invoke declarations and abstract members
excluded), across the assemblies that build on this machine:

| assembly | transpiled | rate |
|---|---:|---:|
| Yggdrasil | 168/182 | 92.3% |
| Discord | 1982/2285 | 86.7% |
| Bifrost | 153/200 | 76.5% |
| Tox | 238/320 | 74.4% |
| Matrix | 144/198 | 72.7% |
| Stub | 30/62 | 48.4% |
| **total** | **2715/3247** | **83.6%** |

All six outputs assemble cleanly (~216k lines of generated assembly total).

## Forced mode

`--force` emits assembly for every method, including ones the analysis cannot
prove:

```sh
python3 -m il2asm.cli build/il/Skymu.il -o out/Skymu --force
```

Three tiers land in `report.json`:

- `exact` — proven lowering, semantics preserved.
- `approximate` — analysis clamped (exception-handling regions, depth
  conflicts). Assembly exists; control flow is not preserved.
- `stub` — no IL body (P/Invoke, abstract) or a structural failure. The symbol
  exists and aborts through `shim_unimplemented`.

`out-native/` holds the full forced run for the whole repository, with
`MANIFEST.md` recording per-assembly tier counts.

## Non-code artifacts

```sh
python3 -m il2asm.resources ../.. -o out-native/resources.S
```

XAML, resx, json, pem and similar files become `.incbin` blobs. XAML is
markup, so this preserves its bytes, not its behaviour.

`il2asm.split` distributes a single transpiled `.S` across a 1:1 mirror of the
original source tree — `.cs` files get the methods their types declare, and
every other file becomes its own `.incbin` module:

```sh
python3 -m il2asm.split --asm out-native/Skymu.S \
    --report build/force/Skymu/report.json \
    --sources ../../archive/Skymu --out ../../Skymu --assets
```

The `Skymu/` tree in this repository was produced that way: 2,132 original
files, 2,132 assembly modules.

## The UI

`Skymu/Skymu.csproj` targets `net461;net5.0-windows` with `UseWPF`. It does
build on Linux — `dotnet build -p:EnableWindowsTargeting=true -f net5.0-windows`
works, and that is how `Skymu.S` was produced. Building is not running, though,
and the assembly contains application logic, not the framework: XAML parsing,
the dependency-property system, data binding and the DirectX compositor are the
runtime the app sits on, and they were never C#.

## Linking

`externals.txt` lists every symbol a transpiled assembly still needs. The
workflow is: compile, attempt to link, read the undefined symbols, implement the
ones the target genuinely uses in `shim/`. That list is the honest measure of
how far a given assembly is from running.
