# Project Status

Last updated: 2026-09-03

## Current state

**Stage 11 — LSRS Robustness / Referee Attack Gate**

Canonical verdict:

`REOPEN EARLIER STAGE / NO-GO`

Targeted Stage-10 LSRS manuscript status:

`NON-SUBMITTABLE IN CURRENT CONTRIBUTION FORM`

The mathematical Stage-4R theorem survives. The failure is novelty/mechanism interpretation, not algebra.

## Decisive Stage 11 finding

On the equilibrium-support branch `x<r`,

\[
(r-x)^2+\theta(r-x)
=\left(x-r-\theta/2\right)^2-\theta^2/4.
\]

Define the virtual right-hand location

\[
z=r+\theta/2.
\]

The frozen price formulas are exactly those of a standard quadratic-Hotelling fixed-location price subgame with a corresponding constant quality advantage. Cohen and Heifetz (2024), Eqs. (8)-(9), reproduce them under this parameter mapping.

Lambertini (1994) is the decisive missed prior art. His unconstrained quadratic Hotelling model allows firms outside the consumer city and gives a standard price subgame that, with the left firm at zero and right firm at `z`, yields

\[
p_1^*=\frac{z(z+2)}3,
\qquad
p_2^*=\frac{z(4-z)}3,
\]

so

\[
\frac{\partial p_1^*}{\partial z}>0,
\qquad
\frac{\partial p_2^*}{\partial z}<0
\]

for `z>2`.

The frozen directional reversal threshold

\[
\theta>4-2r
\]

is exactly equivalent to

\[
z>2.
\]

Therefore the Stage-8 surviving claim that the same one-firm displacement produces a novel rival-up/own-down price response is killed.

## What survives

- Stage-4R global price-equilibrium theorem: `PASS`.
- single crossing: `PASS`.
- global cross-kink deviation audit: `PASS`.
- exact open parameter region: `PASS`.
- exact rational witness: `PASS`.
- symbolic verification: `PASS`.
- Stage-10 seven-page manuscript build: remains technically valid as an artifact.

The full directional game is not globally identical to Lambertini because the directional term disappears after the cutoff crosses the physical right-firm location. Hence the global-kink proof is genuine mathematics. But this residual feature is not the novelty claim on which the LSRS manuscript was frozen.

## Stage 11 referee outcomes

- Referee A — novelty/mechanism: `FATAL / REJECT`.
- Referee B — mathematics/equilibrium: `PASS`.
- Referee C — assumptions/generality: `MAJOR CONCEPTUAL LIMITATIONS`.
- Referee D — LSRS fit/exposition: `REJECT CURRENT VERSION`.
- Handling editor: `REOPEN EARLIER STAGE / NO-GO`.

## Fatal attacks

1. Lambertini (1994) immediately implies the headline same-displacement opposite-price sign pattern in standard unconstrained quadratic Hotelling.
2. The frozen directional equilibrium price formulas admit an exact virtual-location/quality reparameterization matching known quadratic-Hotelling price formulas.
3. Once the headline sign pattern is absorbed, the remaining cross-kink implementation result has not been established as sufficient for the LSRS Letter contribution floor.

## Canonical artifacts

- `reviews/STAGE_11_LSRS_REFEREE_GATE_2026-09-03.md`
- `literature/STAGE_11_LAMBERTINI_ABSORPTION.md`
- `verification/symbolic/stage11_virtual_location_equivalence.py`
- updated `docs/REFEREE_RISK_LEDGER.md`
- updated `docs/CONTRIBUTION_CLAIM_LEDGER.md`

## Current gate record

- [x] Stage 4R-LSRS — mathematics GO
- [x] Stage 6R-LSRS — previous novelty GO — **SUPERSEDED BY STAGE 11**
- [x] Stage 7/7.5-LSRS — previous investment GO — **SUPERSEDED FOR CURRENT CLAIM**
- [x] Stage 8 theory freeze — mathematical objects remain valid; **contribution freeze invalidated**
- [x] Stage 9 reproducibility — PASS
- [x] Stage 10 manuscript — technically complete
- [x] Stage 11 hostile referee gate — **NO-GO / REOPEN**

## Next allowed action

Do **not** proceed to Stage 12 journal positioning or submit the current LSRS manuscript.

Minimum reopening route:

**Stage 6R2 — Virtual-Location Equivalence Novelty Re-Kill**

Candidate claim to test, not yet approved:

> directional access friction can make an interior physical location implement the pricing incentives of a virtual unconstrained Hotelling location outside the consumer city, while the piecewise directional game requires an additional global-deviation condition.

Mandatory closest prior art for that gate:

- Lambertini (1994)
- Lambertini (1997)
- Cohen & Heifetz (2024)
- horizontal/vertical differentiation equivalence literature
- directional/unidirectional Hotelling literature already audited

If that candidate is absorbed or too thin, reopen Stage 3 mechanism search or terminate the project.
