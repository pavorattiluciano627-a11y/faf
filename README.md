# faf — Luarmor/Luraph file analysis

This repository holds two fetched, protected Lua/Luau files and the analysis of them.

| Input | Protection | Result |
|---|---|---|
| `fetched (4).lua` (843 620 B) | Luarmor V4 loader + Luraph v15.1 VM | behaviour trace, 46 protos, 469 decoded constants |
| `fetched (5).lua` (1 147 213 B) | Luraph v15.0 + Luarmor "Junkie" key chain | behaviour trace |

**Start here: [`deobfuscated/fetched4/REPORT.md`](deobfuscated/fetched4/REPORT.md)**

## Short version

* Neither file contains the protected script. Both are **loaders**:
  * `fetched (4).lua` = `_bsdata0` hand-off + `superflow_bytecode` (9.7 KB) + an 833 KB
    Luraph v15.1 interpreter. It runs a Luarmor anti-tamper block (Path2D/CFrame
    fingerprints, `ChildAdded` probes) and then kicks with
    `Luarmor V4 loader failed to perform a check … State294`; the real script is
    fetched from Luarmor/FlowAuth after a key handshake.
  * `fetched (5).lua` = Luarmor "Junkie" chain: stores `SCRIPT_KEY` in
    `TeleportService` settings and runs
    `game:HttpGet("https://jnkie.com/sdk/love.lua") → loadstring(…)()`.
* Nothing malicious executes in the sandbox in either case, and no payload is decrypted.

## Layout

```
deobfuscated/
  fetched4/
    REPORT.md                     full write-up
    fetched4.behavior_trace.lua   behaviour trace from the offline Roblox sandbox
    fetched4.raw_envlog.txt       raw sandbox log
    fetched4.decoded_strings.txt  469 decoded VM string constants
    fetched4.protos_summary.txt   proto creation map
  fetched5/
    fetched5.behavior_trace.lua   behaviour trace
```

## Reproduce

See §8 of the report. In short: clone
[ServerDeadd/Luraph-v15.1-Deobfuscator](https://github.com/ServerDeadd/Luraph-v15.1-Deobfuscator),
rebuild `bin/luau` and `bin/luau-ast` with `build_luau.py` (the shipped ones need
glibc ≥ 2.38), then run `node deob.js <file> -o out.lua --no-devirt`.
