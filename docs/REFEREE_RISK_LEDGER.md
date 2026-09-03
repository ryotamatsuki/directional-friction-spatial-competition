# Referee Risk Ledger — LSRS

Last updated: 2026-09-03, Stage 11

## Stage 11 controlling finding

**FATAL — current LSRS novelty claim is not defensible.**

The Stage-11 hostile audit found an exact virtual-location transformation and a missing prior-art threat:

\[
(r-x)^2+\theta(r-x)
=\left(x-r-\theta/2\right)^2-\theta^2/4
\]

for the equilibrium-support branch `x<r`.

With `z=r+theta/2`, the frozen price formulas coincide exactly with a standard quadratic-Hotelling price subgame with a right-firm quality advantage. Cohen and Heifetz (2024), Eqs. (8)-(9), reproduce the same price formulas after the appropriate parameter mapping.

More decisively, Lambertini (1994) allows unconstrained locations in the standard quadratic Hotelling model and gives price formulas implying

\[
\partial p_1^*/\partial z>0,\qquad
\partial p_2^*/\partial z<0
\]

for `z>2`. The frozen reversal threshold `theta>4-2r` is exactly `z>2`.

Therefore the previous response to “Differentiation lowering one firm's price / opposite price movements are already known” is insufficient: the **same one-firm displacement sign pattern itself** is prior-art / immediate-corollary material in the unconstrained standard model.

See:

- `literature/STAGE_11_LAMBERTINI_ABSORPTION.md`
- `reviews/STAGE_11_LSRS_REFEREE_GATE_2026-09-03.md`
- `verification/symbolic/stage11_virtual_location_equivalence.py`

## A. “This is just vertical differentiation / virtual location in disguise.”

**Status: ESCALATED FROM HIGH RISK TO FATAL CONTRIBUTION ATTACK.**

The full directional game is not globally identical to a vertical-quality model because the cost schedule changes at `x=r`. However, the equilibrium-support branch is exactly equivalent to a virtual location plus a constant quality term, and the equilibrium prices coincide exactly with known quadratic-Hotelling/quality formulas.

## B. “The result is only a local FOC artifact.”

**Status: RESOLVED / PASS.**

The global cross-kink deviation proof remains valid. This mathematical strength does not rescue the killed novelty claim.

## C. “The same one-firm price reversal is already known.”

**Status: FATAL.**

Lambertini (1994) standard unconstrained quadratic Hotelling is now the mandatory closest prior.

## D. “Why vary r if location is not endogenous?”

**Status: MAJOR BUT FIXABLE IN ISOLATION.**

Conditional price-subgame comparative statics are coherent, but after the novelty kill they are not enough to support LSRS publication.

## E. “The theorem is functional-form specific.”

**Status: MAJOR.**

The square-completion identity shows that the chosen directional add-on is more structured than previously recognized.

## F. “One theorem is too thin for LSRS.”

**Status: FATAL FOR THE CURRENT MANUSCRIPT AFTER PRIOR-ART ABSORPTION.**

Before Stage 11 the exact global theorem plausibly cleared the Letter floor. After the headline sign pattern is absorbed, the remaining global-kink implementation result has not been validated as a standalone contribution.

## G. “Global equilibrium uniqueness is overstated.”

**Status: RESOLVED / PASS.**

Only unique global best responses at the displayed equilibrium are claimed.

## H. “Covered market is unsupported.”

**Status: RESOLVED / PASS.**

Covered unit demand/no outside option is a primitive.

## Current routing

Do not submit the Stage-10 LSRS manuscript.

Reopen novelty at Stage 6 (minimum) around the candidate **virtual-location implementation / global-kink equivalence** claim. If that claim is absorbed or too thin, reopen Stage 3 or terminate the route.
