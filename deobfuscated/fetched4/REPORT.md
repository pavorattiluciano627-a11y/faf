# Analysis report — `fetched (4).lua`

**Target:** `fetched (4).lua` — 843 620 bytes, 3 lines
**Protection:** Luarmor V4 loader ("prefer V4 loader") + Luraph v15.1 VM
**Tool:** [ServerDeadd/Luraph-v15.1-Deobfuscator](https://github.com/ServerDeadd/Luraph-v15.1-Deobfuscator)
(the `.rar` at `ehankins007-lgtm/Luraph-v15.1-devirtulize` is an older snapshot of the same
project — `v15_tool_attempt_source/`, smaller `devirt.py`/`driver.py`/`envlog.luau`)
**Date:** 2026-10-23

---

## TL;DR

`fetched (4).lua` is **not** a normal Luraph script. It is a **Luarmor V4 loader /
FlowAuth bootstrapper**, and the script it protects is *not inside the file* — it is
fetched at run time after a key/auth handshake.

| Part | Offset | Size | What it is |
|---|---|---|---|
| `_bsdata0 = {…}` | 0 … 813 | 813 B | Luarmor hand-off blob: build id `54581021`, 32-byte hex blob, 20-byte hex blob, two Unix timestamps (`1656725823`, `1792672144`), ints, two escape-encoded key blobs |
| `superflow_bytecode = {…}` | 813 … 10 499 | 9.7 KB | Luarmor "script data" (escape-encoded, ~2.4 KB decoded) |
| `return setmetatable({…}):t_()(…)` | 10 499 … 843 620 | 833 KB | the Luraph v15.1 interpreter: flattened dispatch state machine, `LPH_*` encrypted constants, anti-tamper probes |

Executed in an offline Roblox/Luau sandbox it runs its anti-tamper "fingerprint"
block (Path2D curve maths, CFrame rotations, `ChildAdded` probes on `game`,
`workspace`, `Folder`, `HttpService`, `RunService`, a 281-byte
`CoreGui.RobloxPromptGui` error prompt) and then **kicks the local player**:

```lua
Players.LocalPlayer:Kick(
  "Luarmor V4 loader failed to perform a check, report this issue in Luarmor ticket. State294")
```

Nothing malicious runs and nothing is decrypted: `State294` is the loader's own
"check failed" path. Everything that executes is the licence/anti-tamper check.

---

## 1. Toolchain

* Detection: `node deob.js "fetched (4).lua" --detect` → `luraph_v15  0.80`
  (no `-- This file was protected…` header — it matched on the VM shape + `LPH` marker).
* The bundled `bin/luau` / `bin/luau-ast` need **glibc ≥ 2.38**; this box is Debian 12
  (glibc 2.36), so both binaries abort with
  `version 'GLIBC_2.38' not found`. They were rebuilt from source with the project's
  own `build_luau.py` (patched Luau 0.739 — writable vector metatable + stack-ceiling
  fix-ups for `debug` probes):

  ```bash
  pip install cmake==3.30.5
  python3 build_luau.py --jobs 2 --portable     # ~4 min on 2 cores
  ```

* Behaviour trace, proto dump and constant decode:

  ```bash
  node deob.js "fetched (4).lua" -o trace.lua --no-devirt --timeout 150 --budget 90
  node deob.js "fetched (4).lua" -o out.lua  --debug --devirt-rounds 1
  python3 tools/seqs.py out.lua.protos.json
  ```

## 2. What the trace shows (visible behaviour)

[`fetched4.behavior_trace.lua`](fetched4.behavior_trace.lua) — 81 statements in 1.13 s:

1. `Instance.new("ScreenGui") → Frame (235×108) → Path2D`, three control points, then
   the whole Path2D API: `GetLength`, 3× `GetPositionOnCurve`, 2× `GetTangentOnCurve`,
   3× `GetPositionOnCurveArcLength`, 3× `GetTangentOnCurveArcLength` — 12 curve answers
   that are **floating-point fingerprints** of the engine's curve maths.
2. 3× `CFrame.new():ToEulerAnglesXYZ() / ToEulerAnglesYXZ() / ToEulerAngles(XYZ) /
   GetComponents() / ToOrientation() / ToAxisAngle()`.
3. Connect + immediately `Disconnect()` `ChildAdded` handlers on `game`, `workspace`,
   a fresh `Folder`, `HttpService`, `RunService`; `Folder2.Name = "155585475"`,
   `Folder:WaitForChild("155585475")`, then destroy both.
4. `loadstring()` of a 281-byte snippet that shows the Roblox error-prompt GUI.
5. `Players.LocalPlayer:Kick(… State294)`, then `while true do wait() end`.

No `HttpGet`, no webhook, no `FireServer`, no remote `loadstring` anywhere in the
executed path.

## 3. Recovered constants

[`fetched4.decoded_strings.txt`](fetched4.decoded_strings.txt) — 469 decoded entries.

* Loader markers: `Luarmor`, `identifyexecutor`, `static_content_170926` (the
  executor file-cache name Luarmor probes with `isfile`/`readfile` before signing),
  `d049a886a1f-ocmid`, `_bsdata0`, `superflow_bytecode`.
* Canary error strings (re-created by the loader to compare against the engine):
  `ModuleScript:137: attempt to perform arithmetic (mul) on userdata and userdata`,
  `module.lua:107: attempt to get length of a string value`,
  `:173: attempt to call a nil value`,
  `The debug library is required on Luau platforms. Please open a support ticket.`,
  `The metatable is locked`.
* Full Luraph VM surface (`buffer.*`, `bit32.*`, `coroutine.*`, `table.*`,
  `string.pack/unpack`, `vector.create`, `debug.*`) and the Roblox datatypes it
  emulates (`CFrame`, `Vector2/3`, `UDim2`, `Path2DControlPoint`, `Enum`, …).
* A large ASCII-art banner stored as an escape-encoded blob.

## 4. Why there is nothing more to devirtualize in this file

The Luarmor "V4 loader" architecture (documented by the tool authors and by the
FlowAuth reverse-engineering write-ups):

```
loader (≈9.7 KB)  ──publishes──►  _bsdata0 hand-off  ──►  Luraph v15 bootstrapper
      │                                                        │
      └────────────►  POST /v1/auth/challenge                  │
                      POST /v1/auth/script   → runtime key     │
                      POST /v1/auth/payload  → chunked, lz4+base64
                                              (the real script) ◄┘
```

* `_bsdata0` is **session-bound**; a stale hand-off is rejected (`launch_ticket_rejected`).
* The protected script is returned as *chunked lz4+base64* payloads over HTTP — it is
  never present in the loader file.
* The sandbox has no route to the auth hosts, so the check fails and the bootstrapper
  takes the `Kick()` branch. Only the anti-tamper shell ever exists in memory: the
  proto capture has exactly **46 protos** ([`fetched4.protos_summary.txt`](fetched4.protos_summary.txt),
  one VM maker `843620_812768532`, plus two stragglers at seq 39/40), and
  `constants decoded on request: calls=0 decoded=0`.

Evidence that the failure is not a sandbox mis-configuration (all give the same
121-line trace and `State294`):

| Experiment | Result |
|---|---|
| `game.GameId` ∈ {`155585475`, `3044785173`, `3317771874`} × `game.PlaceId` ∈ {`155585475`, `3044785173`, `8737899170`} (9 runs) | identical |
| prelude setting `script_key = "AAAA…"` | identical |
| `--no-hooks` (no VM closure hooks) | identical |
| `DEOB_SPIN_LATE=1` (no spin watchdog before run 1) | identical |
| `trace_globals` | only the stub's own `_bsdata0` / `superflow_bytecode` writes — no hand-off read that returns nil |

Full devirtualisation at the tool's default walk budget does not complete on this
2-core box: `DEOB_FAST=1` one-round best-of-N ran 40 min, `DEVIRT_SHALLOW=1` another
20 min; both were killed at their caps with no `.devirt.luau`. The upstream FlowAuth
work (`QuantumXternal/FlowAuth-Deobfuscator`, `L0stHeart/Deobfuscator-Luraph-V15`)
reports the same class of problem: this payload family runs an anti-analysis "grind"
and its round-1 lift of a 713 KB payload recovered only 53 functions / 8.8 KB of
scaffolding.

A **reduced-budget lift does finish** and is included — see §5 below.

## 5. Partial devirtualization (recovered source)

```bash
DEOB_FAST=1 DEVIRT_WALK_LIMIT=8000 node deob.js "fetched (4).lua" \
     -o out.lua --debug --devirt-rounds 1
# [*] 22 functions, 12 unlifted blocks, 0 unstructured jumps (19.8 s)
python3 luaclean.py bin/luau-ast out.lua.devirt.luau out_clean.luau
# removed 106 junk statements (89269 -> 84983 bytes)
```

→ [`fetched4.deobfuscated.partial.luau`](fetched4.deobfuscated.partial.luau)
(2 040 lines, 84 871 B, 12 `error("devirt: …")` markers, ~33 unresolved
`if nil then` conditions, parses cleanly with `luau-ast`). This is the anti-tamper
shell itself, reconstructed:

* `payload_fn_41` — the error reporter: `loadstring` of
  `local t,r=... spawn(function() while wait() do pcall(function() local g =
  game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ErrorPrompt; …`) followed by
  `LocalPlayer:Kick(r)` — i.e. the `State294` kick is raised by passing the state text
  as `r`.
* `payload_fn_44` — the "this is a Luarmor V4 loader wrapper / do not run this file
  directly" guard.
* `payload_fn_29`, `payload_fn_33` — **error-message canaries**: they raise a Lua error,
  re-parse the message with patterns such as
  `":[^%p%P]*([0-9][0-9]*)[:\r\n][^%p%P]-"`, `"%:([%d]+)[\n%:\r][^%c%C]?"`,
  `":[^%l%L]?([%d]+)[^%d%D]?[:\r\n][^%l%L]-"` and compare the extracted chunk
  name/line numbers against expected values. Inside an offline sandbox those messages
  come from the harness (`ModuleScript:137: …`, `module.lua:107: …`,
  `:173: attempt to call a nil value` are the exact strings in the constant table), so
  the comparison fails and the loader takes the kick path.
* `payload_fn_38` — the constant/name table (`static_content_170926`, `_bsdata0`,
  `superflow_bytecode`, `string`, `table`, …) built at run time for the VM's `__index`.
* The rest is VM scaffolding (bytecode varint decoder `payload_fn_31`,
  word-swizzling `payload_fn_32`, `coroutine`/`Disconnect` canaries in the tail) plus
  Luraph runtime stubs (`luraph_runtime1…6`), because the VM object itself is not part
  of the script and is not lifted.

The remaining unlifted blocks are VM-side operations the symbolic evaluator cannot
model (`compare None 43`, `corrupt/encrypted register store 5744`,
`builtin buffer.writeu32 on symbolic values`, `index b'\x04\x00Cc\x05c'`).

## 6. If the protected script is actually needed

1. Run the loader with a valid Luarmor key on a machine the auth service accepts, with
   an HTTP proxy that records `x.luarmor.net` / FlowAuth responses (challenge, script,
   each payload chunk).
2. Replay those bodies in the tool's sandbox in the *same* run (`urls.__lrm_plant =
   [{url=…, body=…, reqbody=…}]`, or `CFG.__superz_canned["GET <url>"] = {body=…}`), or
   decode the chunked payloads offline (`lz4` + base64 → concatenate → Luraph v15 file)
   and devirtualize that file, which is a normal 700 KB Luraph payload.
3. `QuantumXternal/FlowAuth-Deobfuscator` / `L0stHeart/Deobfuscator-Luraph-V15`
   (`flowauth_crack/flowauth_chain.py`) automate exactly this chain, including the
   `_bsdata0` preseed, the SHA-256/base64/JSON shims and the canned HTTP map.

## 7. Companion file `fetched (5).lua`

`fetched (5).lua` (1 147 213 B, 2 lines) is a **Luraph v15.0** file with the real
header (`-- This file was protected using Luraph Obfuscator v15.0`, confidence 1.00)
and a Luarmor **"Junkie"** key chain. It runs further than (4);
[`../fetched5/fetched5.behavior_trace.lua`](../fetched5/fetched5.behavior_trace.lua) shows:

```lua
getgenv().SCRIPT_KEY = SCRIPT_KEY
HttpService:GetSecret("JUNKIE-DEVELOPMENT")            -- errors
hookfunction(function(...) end, function(...) print("hellow") end)
request({ Method="GET", Url=…, Headers={["User-Agent"]="Roblox/WinInet"}})
TeleportService:SetTeleportSetting(<obfuscated key>, SCRIPT_KEY)  -- key stashed in a service setting
game:HttpGet("https://jnkie.com/sdk/love.lua") → loadstring(...)()
```

That is: it hides the user's key inside `TeleportService` settings and pulls the real
script from `jnkie.com` at run time. Again, the payload is network-delivered and is not
in the file.

## 8. Files in this folder

| File | Description |
|---|---|
| `fetched4.behavior_trace.lua` | readable behaviour trace (what the file does in the sandbox) |
| `fetched4.raw_envlog.txt` | raw sandbox log: Path2D model answers, warnings, statement markers |
| `fetched4.decoded_strings.txt` | 469 decoded VM string constants |
| `fetched4.protos_summary.txt` | proto creation map — 46 protos, 3 makers |
| `fetched4.deobfuscated.partial.luau` | partial devirtualization: 2 040 lines, 22 functions, 12 unlifted blocks |
| `../fetched5/fetched5.behavior_trace.lua` | trace of the companion file |

The 3.7 MB `*.protos.json` dump is reproducible with the commands in §1 and is
deliberately not committed.

## 9. Reproduce

```bash
git clone --depth 1 https://github.com/ServerDeadd/Luraph-v15.1-Deobfuscator.git
cd Luraph-v15.1-Deobfuscator
pip install cmake && python3 build_luau.py --jobs 2 --portable   # binaries need glibc >= 2.38
node deob.js "../fetched (4).lua" -o out.lua --no-devirt --timeout 150 --budget 90
node deob.js "../fetched (4).lua" -o out.lua --debug --devirt-rounds 1
python3 tools/seqs.py out.lua.protos.json
DEOB_FAST=1 DEVIRT_WALK_LIMIT=8000 node deob.js "../fetched (4).lua" \
        -o out.lua --debug --devirt-rounds 1        # partial lift, ~20 s
```

> **Scope:** a defensive read of files that were already in this repository, to show
> what they do before anyone runs them. The protected payloads are not present in the
> files and are not reproduced here.
