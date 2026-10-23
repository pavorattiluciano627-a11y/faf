# `fetched (4).lua` — deobfuscation / analysis report

Tool used: [ServerDeadd/Luraph-v15.1-Deobfuscator](https://github.com/ServerDeadd/Luraph-v15.1-Deobfuscator)
(Luau 0.739 built from source for this sandbox, since the bundled `bin/luau`
needs glibc 2.38 and this box has 2.36).

| Item | Value |
|---|---|
| Input | `fetched (4).lua` — 843,620 bytes, 2 lines |
| Detector verdict | `luraph_v15`, confidence 0.80 |
| File layout | `_bsdata0 = { ... }` (812 B) + `superflow_bytecode = { ...encrypted VM blobs + opcode functions... }; return setmetatable({...VM dispatch...},{}):t_()(...)` |
| What it actually is | **Luarmor V4 loader stub** (Luarmor = a Roblox script-licensing / whitelist service; v4 wraps its loader in a Luraph v15 VM) |
| Result of a full run in the sandbox | run status: `stopped in an endless loop (truncated)` — anti-tamper branch |

Artifacts in this folder:

* `fetched4_trace.lua` — behaviour trace (what the script actually does when run)
* `fetched4_strings.txt` — every string the VM decrypted during the run (evidence)
* `fetched4_devirt.lua` — devirtualized Luau, if the full lift completed (see below)

---

## 1. What the file does

The very first thing the VM does is build a set of decoy Roblox objects and
probe the engine, then run integrity checks:

```
Instance.new("Folder") / ("ScreenGui") / ("Frame") / ("Path2D")
CFrame.new():ToEulerAnglesXYZ() / :ToEulerAnglesYXZ() / :ToEulerAngles(Enum.RotationOrder.XYZ)
CFrame.new():GetComponents() / :ToOrientation() / :ToAxisAngle()      (3x)
Path2D:SetControlPoints{...} :GetLength() :GetPositionOnCurve(...)
        :GetTangentOnCurve(...) :GetPositionOnCurveArcLength(...) :GetTangentOnCurveArcLength(...)
ScreenGui:Destroy()
game.ChildAdded / workspace.ChildAdded / Folder.ChildAdded :Connect() ... :Disconnect()
Folder:GetChildren() / Folder:WaitForChild("155585475") / Instance.new("Folder", parent)
game:GetService("HttpService") / game:GetService("RunService")
```

Those `Path2D` / `CFrame` / `Instance` probes are not the script's feature —
they are anti-analysis: their numeric results feed the constant decryption and
are compared against values baked in at obfuscation time, so a re-implementation
that returns something slightly different is detected.

After the checks it does:

```lua
-- loadstring() of 281 bytes: a fake Roblox error prompt (CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt)
spawn(function() while wait() do pcall(...) end end)
game:GetService("Players").LocalPlayer:Kick(
  "Luarmor V4 loader failed to perform a check, report this issue in Luarmor ticket. State294")
while true do wait() end
```

So in this sandbox (and in any environment whose engine answers differ from real
Roblox) the loader concludes it is being tampered with, shows a fake
"error prompt" UI title/message and kicks the player — `State294` is
Luarmor's internal check id.

## 2. Decrypted strings — what the loader is made of

`fetched4_strings.txt` is the complete list of strings the VM decrypted while
executing. Highlights:

* an ASCII-art loading screen;
* `identifyexecutor`, `debug`, `info`, `traceback`, `getinfo`,
  `"The debug library is required on Luau platforms. Please open a support ticket."`
  → executor/debug-library fingerprinting;
* deliberately-triggered error texts that it then parses with regexes to read the
  **line numbers of its own code** — i.e. it verifies that its source sits at the
  line numbers it was compiled with:
  `"module.lua:107: attempt to get length of a string value"`,
  `"ModuleScript:137: attempt to perform arithmetic (mul) on userdata and userdata"`,
  `":173: attempt to call a nil value"`,
  `"[%:](%d%d*)[^%x%X]*[\r\n%:][^%w%W]*"`, …
* the whole `Instance`/`CFrame`/`Vector3`/`Enum`/`Path2D` API surface used by the probes;
* `"static_content_170926"`, `"d049a886a1f-ocmid"`, `"_bsdata0"`, `"superflow_bytecode"`
  → Luarmor build/script identifiers handed to the auth backend;
* the 281-byte error-prompt `loadstring` payload shown above.

## 3. Why the payload is not in this file

This file is only the **loader**. Luarmor V4 clients do not contain the protected
script: after the check state is accepted they call the Luarmor API
(`…-roblox-auth.luarmor.net`) with the script id/key + HWID, the API returns the
actual (Luraph-protected) payload, and the loader `loadstring`s it.

Consequences:

* The run above **never reaches the network stage** — the check fails first, so
  no URL is even constructed. There is nothing in the trace to fetch.
* Even with a passing check there is nothing to decrypt offline: the payload is
  only served after a live, per-session authenticated handshake.
* The tool's own detector knows this shape: `src/detect.js` has a
  `luarmor_client` plugin documented as
  *"Auth-gated loader: control flow is not virtualized … not devirtualizable"*.
  It does not fire here only because the Luarmor signatures are still encrypted
  in this file (the plugin matches the plaintext variant).

## 4. Devirtualization result

The Luraph lifter runs in two stages: capture the VM protos (46 closures,
512 tables — the two biggest instruction tables are ~1.39 MB and ~0.8 MB of
JSON) and then symbolically walk them, asking the sandboxed VM to decrypt every
lazy constant.

* Proto capture: OK → `protos.json` (46 protos).
* Bootstrap lift: OK → *"Luraph bootstrap: 37 functions from #1 (10.1s)"*.
* Live constant decryption: **fails** (`live constant request failed`) because the
  REPL that answers constant requests is the same Luraph VM that is spinning in
  `while true do wait() end` after the kick — it never returns to the harness's
  dump/decode loop. The lifter falls back to batch "constant rounds", which
  re-run the whole 843 KB VM per round. On this 2-core box one full lift needs
  well over 45 minutes of CPU time, so no `fetched4_devirt.lua` was produced in
  this session.

If you want to push it further on a faster machine:

```bash
node deob.js "fetched (4).lua" -o out.lua --debug --timeout 3600 --budget 300 \
     --devirt-rounds 1            # single full lift, writes output right after
DEOB_FAST=1 DEVIRT_FULL_ROUNDS=1 DEVIRT_ROUND_BUDGET=3600 \
DEOB_PYPY=/path/to/pypy3        # PyPy makes the lifter ~2x faster
```

Expect heavy `error("devirt: ...")` markers: the code that only runs after a
passing check is never reached, so its constants cannot be decoded at all.

## 5. Safety verdict

* Nothing malicious is visible in the loader itself (no webhook, no
  `HttpService:PostAsync`, no token/cookie access in the decrypted strings and no
  URL in the trace). It is a licensing/anti-tamper stub.
* The real script is **remote and unauditable from this file**. Running it means
  trusting both Luarmor and whoever owns `static_content_170926`. If you need to
  know what it does, capture the payload the loader requests (or ask the author
  for the deobfuscated source) and analyse that file — it will be another
  Luraph v15 blob, which this same tool can process without the Luarmor layer.
