# `fetched (4).lua` — deobfuscation output

Input: `../fetched (4).lua` (843,620 bytes) — Luraph v15 VM around a
**Luarmor V4 loader** (`static_content_170926`), i.e. an auth-gated Roblox
whitelist stub, not the protected script itself.

| File | What it is |
|---|---|
| `ANALYSIS.md` | **Read this first** — what the file is, what it does, why the payload is not inside it, and how the lift was produced |
| `fetched4_trace.lua` | Behaviour trace: every Roblox API call / instance / connection the script makes when executed in the offline sandbox |
| `fetched4_strings.txt` | All 278 strings the VM decrypted during the run (executor fingerprinting, `debug.info` line-number checks, Path2D/CFrame probes, Luarmor ids, the error-prompt payload) |
| `fetched4_devirt.lua` | Best-effort devirtualized Luau (partial: 22 functions, 13 `error("devirt: …")` markers) |

## Verdict in one paragraph

The file is only a **loader**: it builds decoy `Instance`s, probes `Path2D` /
`CFrame` / `debug` / `Instance` behaviour as anti-analysis and decryption-key
material, and — because those answers differ from real Roblox in any sandbox —
it shows a fake `RobloxPromptGui` error prompt, calls
`Players.LocalPlayer:Kick("Luarmor V4 loader failed to perform a check … State294")`
and spins forever. The real script is fetched from Luarmor's API after a live,
authenticated handshake, so it is **not in this file and cannot be decrypted
offline**. Nothing malicious is visible in the loader itself; the unauditable
part is whatever `static_content_170926` delivers.

## How it was produced

```bash
# tool + a Luau 0.739 build for this box (bundled binaries need glibc 2.38)
git clone https://github.com/ServerDeadd/Luraph-v15.1-Deobfuscator
pip install cmake ninja
git clone --depth 1 --branch 0.739 https://github.com/luau-lang/luau.git
python build_luau.py --src luau-src --portable

# behaviour trace
node deob.js "fetched (4).lua" -o fetched4_trace.lua --no-devirt --timeout 180 --budget 60

# decrypted strings (needs --debug, otherwise the temp dir with .strings.txt is deleted)
node deob.js "fetched (4).lua" -o f4s.lua --debug --no-devirt --strings

# devirtualization (walk cap: an uncapped full lift does not finish on 2 vCPUs)
DEOB_FAST=1 DEVIRT_FULL_ROUNDS=1 DEVIRT_WALK_LIMIT=8000 \
node deob.js "fetched (4).lua" -o fetched4_devirt.lua \
     --debug --timeout 1200 --budget 300 --devirt-rounds 1
```
