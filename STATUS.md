# Project Status

Last updated: 2026-09-03

## Current state

**Stage 3P — Economics Bulletin Publication-Floor Salvage Test**

Scientific verdict: `CONDITIONAL GO — EB SALVAGE ROUTE SURVIVES`

The upper-field standalone theory route remains closed. Stage 3P asked a narrower question: can the best Stage-3S result support a short note under an Economics Bulletin-level publication standard?

## Tested primitive

\[
\tau(x,y;\theta)=(x-y)^2+\theta\max\{y-x,0\}.
\]

## Minimal surviving result

Fix the left firm at `0` and the right firm at `r in (0,1)` and let firms set prices simultaneously.

Define

\[
\bar r=\frac{\sqrt{17}-1}{4}.
\]

For

\[
r\in(\bar r,1)
\]

and

\[
4-2r<\theta<\frac{2r(5r-2)}{2-r},
\]

the candidate middle-sharing price pair is a **strict global pure-strategy Nash equilibrium**, not merely a regime-local FOC. The equilibrium prices satisfy

\[
\frac{\partial p_L^*}{\partial r}>0,
\qquad
\frac{\partial p_R^*}{\partial r}<0.
\]

Thus greater separation raises the left firm's price but lowers the directionally exposed right firm's price on an open parameter region.

At `theta=0`, both derivatives are positive, so the reversal disappears in the standard quadratic-Hotelling benchmark.

## Exact witness

At `r=4/5`, `theta=5/2`:

- `x*=337/615`;
- `p_L^*-c=337/150`;
- `p_R^*-c=139/75`;
- `dp_L^*/dr=61/30>0`;
- `dp_R^*/dr=-1/30<0`;
- the left firm's cross-regime profit derivative at the kink is `-1/15<0`.

## What changed relative to Stage 3S

Stage 3S correctly rejected Candidate E as too narrow for an upper-field standalone architecture and warned that it was only regime-local at that point.

Stage 3P deliberately lowered the publication threshold and completed the missing global deviation check. The local-artifact concern is now resolved for the explicit parameter region above.

This does **not** reopen the RIO/JICT route.

## Binding killed routes remain killed

- old firm-specific additive wedge;
- functional-form novelty as the contribution;
- price-equilibrium existence frontier as main contribution;
- generic asymmetric location or regime switching;
- first/second-mover advantage route;
- mechanical welfare/policy thresholds.

## Gate status

- [x] Stage 3R Prior-Art Pre-Kill — NO-GO for existence-frontier route
- [x] Stage 3S post-kill 10-candidate search — NO-GO for upper-field standalone route
- [x] Stage 3P global price-equilibrium salvage proof — PASS
- [x] Exact rational witness — PASS
- [x] Symbolic identity checks — PASS
- [x] EB publication-floor fit audit — PLAUSIBLE
- [ ] Final direct proposition-level novelty re-kill — **ONE REMAINING BLOCKER**
- [ ] 5–7 page short-note manuscript — blocked until novelty re-kill

## Current journal-level interpretation

- RIO / JICT: NO-GO on current result alone.
- Economics Bulletin or comparable concise-note outlet: **credible conditional route**.
- Higher mid-tier spatial journal: requires an additional substantive result and is not justified by Stage 3P alone.

## Canonical Stage 3P files

- `analysis/STAGE_3P_EB_SALVAGE_TEST.md`
- `model/STAGE_3P_EB_MINIMAL_NOTE.md`
- `literature/STAGE_3P_EB_PUBLICATION_FLOOR_AUDIT.md`
- `reviews/STAGE_3P_EB_SALVAGE_GATE_2026-09-03.md`
- `verification/symbolic/eb_price_reversal.py`

## Next allowed action

Run one narrow proposition-level novelty re-kill against the strongest asymmetric-transport price/location predecessors. If the exact sign-reversal theorem is not prior art or an immediate corollary, proceed directly to a 5–7 page Economics Bulletin-style note. Do not add location, policy, or welfare extensions before that decision.

## Archived predecessor

See `archive/eb_rejected/`.
