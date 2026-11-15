# This repository is now assembly

Every .NET project in this repository was transpiled from IL to x86-64 GAS
assembly and the `.S` files were placed where the original projects used to be.
The C# sources, XAML, csproj files and the solution are intact in
[`archive/`](archive/). The two NSIS installers and the PHP user server were
translated the same way by the same toolchain, from script to assembly.

This was produced by [`Tools/il2asm`](Tools/il2asm), a real IL→x86-64
transpiler (`dotnet build` → `ilspycmd -il` → stack-typed lowering → `.S`) plus
NSIS and PHP script→x86-64 translators. Nothing outside `Tools/` is left in a
non-assembly code language: every `.cs`, `.nsi`, `.php` and `.il` source now
has a native counterpart, and every original is preserved under `archive/`.

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
| `NSIS/*.S` | **13 modules**: both installers translated to assembly, 11 assets as `.incbin` |
| `UserServer/server.php.S` | the PHP user-count server translated to assembly |
| `archive/` | **every original project, the PHP server and `Skymu.sln`** |
| `Tools/il2asm/` | the transpilers, shims, tests and `out-native/` snapshots |

`Images/` holds PNGs and other non-code assets; `Tools/` is the porting
machinery itself. Neither is an application source tree, so neither is ported.

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

## The NSIS installers are assembly too

NSIS has no IL, so it could not go through the .NET pipeline. Both scripts were
translated statement by statement by
[`Tools/il2asm/il2asm/nsis.py`](Tools/il2asm/il2asm/nsis.py):

```
archive/NSIS/SkymuSetup.nsi      ->  NSIS/SkymuSetup.nsi.S
archive/NSIS/SkymuBetaSetup.nsi  ->  NSIS/SkymuBetaSetup.nsi.S
archive/NSIS/installer.ico       ->  NSIS/installer.ico.S      (.incbin)
archive/NSIS/license.txt         ->  NSIS/license.txt.S        (.incbin)
```

- 13 original files → 13 `.S` files, same names, `.S` appended.
- Each script becomes real code: `Function` and `Section` are function symbols,
  `Call` is a `call`, `${If}`/`${Else}` are comparisons and branches, and each
  installer command calls `shim_nsis_*` in
  [`Tools/il2asm/shim/nsis.c`](Tools/il2asm/shim/nsis.c).
- `"$INSTDIR\desktop.ini"` is composed at run time, because NSIS variables are
  mutable strings.
- 120 statements lowered, 38 wizard-only, 86 directives across the two scripts.

The wizard itself (`nsDialogs::*`, `GetDlgItem`, `SendMessage`, MUI pages) is
not invented. Those 38 statements are recorded in each module's header and
reported through `shim_nsis_unimplemented`. Everything else runs: the install
section, the uninstall section, the registry writes, the shortcuts, the
`GetSystemWow64Directory` probe that chooses `Program Files`, and the
`MessageBox` + `Abort` guard in `un.onInit`.

```sh
cd Tools/il2asm
./nsis.sh            # regenerate, assemble all 13, link and dry-run
```

The dry run performs 42 actions and both entry points return 0. It prints the
sequence instead of touching the real filesystem, registry or Start menu. The
`File /r` payload is not embedded because `archive/Skymu/bin` is empty.

## The PHP user server is assembly too

PHP also has no IL, so `archive/UserServer/server.php` was lowered in the same
way by
[`Tools/il2asm/il2asm/php.py`](Tools/il2asm/il2asm/php.py):

```
archive/UserServer/server.php  ->  UserServer/server.php.S
```

- One original file → one `.S` file, same name, `.S` appended.
- Functions become `php_Function_*`, closures become `php_closure_*`, and every
  `if`, `foreach`, `return`, `continue` and `exit` is a real branch or call.
- Values are `pv` cells from [`Tools/il2asm/shim/php.c`](Tools/il2asm/shim/php.c):
  null, bool, int, double, UTF-8 string, ordered array and closure. Arrays are
  ordered hash maps with reference semantics, which is what makes
  `$sessions[$token]` and `foreach ($sessions as &$session)` work.
- The six script functions and six closures — 52 variables — are all emitted.
  Routing, token minting, `json_decode`/`json_encode`, the `online` flag, the
  70-second ping timeout, counting, listing, search and all error responses are
  performed by the generated code, not by the shim.
- `define()` is resolved at translation time: `STATE_FILE` becomes
  `./data/sessions.json`. `$_SERVER` and `$_GET` are request accessors supplied
  by the shim; the query string is parsed and percent-decoded.

`php_execute` runs one request and records status and body in memory instead of
speaking HTTP; `exit` unwinds with `longjmp`, and the session file is a
process-local buffer. The harness sends 30+ requests covering token creation,
`/userver` mount-prefix stripping, `OPTIONS`, `set_status` online and offline,
`count`, `list`, case-insensitive `search`, `ping`, invalid JSON, invalid
tokens, missing fields, non-boolean values, `/ws` (501), unknown routes (404)
and trailing slashes:

```sh
cd Tools/il2asm
./php.sh            # regenerate, assemble, link and run the request matrix
./php.sh --check    # just assemble, link and run
```

The run is clean under AddressSanitizer and UndefinedBehaviorSanitizer (leak
checking disabled, because the shim never frees). No PHP interpreter and no
HTTP server are involved, and none is shipped.

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
         Skymu.Tests/Skymu.Tests.S Plugins/*/*.S NSIS/*.S UserServer/*.S; do
    gcc -c -o "/tmp/$(basename "$f" .S).o" "$f"
done
```

Requires only `gcc` and an x86-64 Linux host. No .NET SDK is needed to
assemble; the SDK is only needed to re-run the transpiler against `archive/`.

The Skymu, NSIS and UserServer modules use absolute `.incbin` paths into
`archive/` where they embed assets. If
the repository moves, re-run the split (which regenerates every module and its
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
./nsis.sh                                     # NSIS -> assembly + dry run
./php.sh                                      # PHP -> assembly + request matrix
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
6. **The NSIS output is a dry-run installer, not a Windows installer.** It runs
   the real sequence as native code and prints it; the wizard pages are reported
   but not recreated, and no installer PE is produced. `makensis` would still be
   required to ship one.
7. **The PHP output is a request dry run, not a PHP interpreter or HTTP
   server.** `php_execute` invokes the translated script and records the
   response in memory. Session storage is a process-local buffer, not a file,
   and the translated script only implements the builtins this server uses.

The transpiler rejects what it cannot lower correctly rather than emitting
plausible wrong code; `--force` exists solely so that every method acquires a
symbol, which is what "make everything assembly" requires.

## Restoring the source tree

```sh
rm -rf Skymu Bifrost Yggdrasil Skymu.Tests Plugins NSIS UserServer
mv archive/Skymu archive/Bifrost archive/Yggdrasil archive/Skymu.Tests \
   archive/Plugins archive/NSIS archive/UserServer .
mv archive/Skymu.sln .
```

The swap is uncommitted, so `git checkout -- .` also restores every original
file.
