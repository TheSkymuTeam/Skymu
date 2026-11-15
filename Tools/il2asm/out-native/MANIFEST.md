# Native output

Every method in the repository, lowered to x86-64 assembly. 5,935 methods across
seven assemblies, plus 108 non-code artifacts (XAML, resx, json, pem) as
`.incbin` data blobs.

All files assemble with `gcc -c` and produce valid ELF objects. That is the only
guarantee made here.

| assembly | methods | exact | approx | stub | asm lines | source | object |
|---|---:|---:|---:|---:|---:|---:|---:|
| Skymu | 2087 | 1570 | 391 | 126 | 256,945 | 9.4 MB | 2.1 MB |
| Discord | 2316 | 1987 | 253 | 75 | 279,562 | 11.8 MB | 2.0 MB |
| Tox | 844 | 244 | 60 | 540 | 36,843 | 1.2 MB | 349 KB |
| Yggdrasil | 228 | 172 | 5 | 51 | 8,756 | 305 KB | 69 KB |
| Bifrost | 200 | 155 | 41 | 4 | 38,300 | 1.6 MB | 303 KB |
| Matrix | 198 | 144 | 47 | 7 | 27,683 | 910 KB | 216 KB |
| Stub | 62 | 30 | 22 | 10 | 4,745 | 147 KB | 39 KB |
| **total** | **5935** | **4302** | **819** | **813** | **653,000** | **26 MB** | **5.1 MB** |

## Tiers

- **exact** — normal lowering. Stack depth and types proven at every
  instruction; the code does what the IL said. 4,302 methods (72.5%).
- **approx** — the analysis could not prove the method (exception handling
  regions, depth conflicts, unsupported opcodes) and was forced through.
  Assembly exists; control flow around `.try`/`.catch` is *not* preserved and
  results are not trustworthy. 819 methods (13.8%).
- **stub** — no IL body exists to lower (P/Invoke declarations, abstract
  members) or the method failed for a structural reason. The symbol exists and
  calls into `shim_unimplemented`, which prints the method name and aborts.
  813 methods (13.7%).

Tox is mostly stubs because 340 of its 844 methods are `libtox` P/Invoke
declarations and 184 are abstract/extern — native code that was never C#.

## Files

```
Skymu.S          WPF application (built with EnableWindowsTargeting)
Discord.S        Discord client plugin
Tox.S            Tox protocol plugin
Yggdrasil.S      shared model/API library
Bifrost.S        TLS + WebSocket stack (BouncyCastle replacement)
Matrix.S         Matrix protocol plugin
Stub.S           plugin template
resources.S      XAML, resx, json, pem as .incbin blobs + resource_table
```

`resources.S` exposes each artifact as `res_<path>` plus a `resource_table` of
`{name, data, length}` triples and a `resource_count`.

## What this does not give you

Linking any of these into a working program still requires:

1. `shim/shim.c` and every symbol in each `externals.txt` (1,092 for Discord,
   ~55 for Yggdrasil).
2. Exception handling. Any `approx` method that relies on `try`/`finally` will
   misbehave; the unwinder does not exist.
3. A UI stack. `Skymu.S` contains the application logic, view models and
   control code as machine code, but WPF itself — XAML parsing, dependency
   properties, data binding, the DirectX compositor — is not assembly here, it
   is the runtime that was never ported. `resources.S` preserves the XAML bytes;
   it does not interpret them.

Assembly for a method is not a working method. The `exact` tier is the part that
carries its original semantics; the rest is present because you asked for
everything to be present.
