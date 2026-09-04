# Verification and reproducibility

Canonical theory freeze: `DFSC-THEORY-2026-09-04-v1`.

Stage 9 organizes the verification assets for third-party reproduction. The frozen positive theorem package is reproduced by:

- `symbolic/stage3u_frequency_feedback_preflight.py` — benchmark identities and local preflight comparative statics;
- `symbolic/stage5u_minimum_service_floor.py` — exact hardened global-Nash witness, prices/profits, SOCs, reaction signs, continuation and global deviation comparisons;
- `numerical/stage5u_neighborhood_audit.py` — deterministic open-neighborhood support audit (`595` local candidates, `444` global survivors);
- `symbolic/stage7u_welfare_generality.py` — operator-envelope identity, private/social wedge, same-floor second best and support-band roots;
- `numerical/stage7u_power_waiting_robustness.py` — deterministic power-waiting robustness audit.

Historical Stage 4 negative-result scripts remain useful for provenance but are not part of the frozen positive theorem package.

Run all current gates with:

```bash
make verify
```

The combined transcript is written to `build/verification.log` and is intentionally not committed.

Implementation note: Stage 9 made the Stage 7 symbolic script robust to SymPy 1.14 radical normalization using algebraically equivalent exact expressions. No theory or reported value changed.
