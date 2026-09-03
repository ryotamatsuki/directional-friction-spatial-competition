# Project Status

Last updated: 2026-09-03

## Frozen publication route

**Stage 3Q — Economics Bulletin short-note route remains FROZEN / GO.**

The frozen proposition, proof, and novelty re-kill on `stage3q/eb-proposition-novelty-rekill` are unchanged. The EB note remains independently viable.

## Experimental uplift route

**Stage 3T — E × H Uplift Test**

Final verdict: `NO-GO — E×H UPLIFT ROUTE EXHAUSTED`

This branch tested whether endogenous location generates a theorem that exists only through the interaction of the Stage-3Q price-reversal effect (E) and the directional-exposure location channel (H).

## P1 — Price-reversal frontier crossing

**KILLED.**

The own-price reversal frontier is

\[
r_F(\theta)=\frac{4-\theta}{2}.
\]

The positive interior stationary location on the active middle branch is

\[
r_+(\theta)=\frac{4-3\theta+\sqrt{16-3\theta^2}}{6}.
\]

Their gap is

\[
r_F-r_+=\frac43-\frac16\sqrt{16-3\theta^2}\ge\frac23>0.
\]

Thus endogenous location does not cross or bind the price-reversal frontier on the minimal validated branch.

## P2 — Price-reversal-driven location regime change

**KILLED as an E×H interaction theorem.**

The endpoint/interior location switch occurs at

\[
\theta_L=\frac{\sqrt5-1}{2}\approx0.618034.
\]

At every interior stationary point,

\[
\left.\frac{\partial p_R^*}{\partial r}\right|_{r=r_+}
=\frac{8-\sqrt{16-3\theta^2}}{9}\ge\frac49>0.
\]

Hence the location-type transition occurs while differentiation still raises the right firm's own equilibrium price. The Stage-3Q price reversal does not cause the location-regime change.

## P3 — Private differentiation paradox

**KILLED.**

On the frozen middle-sharing branch,

\[
\frac{\partial D_R^*}{\partial r}<0.
\]

Therefore in the Stage-3Q price-reversal region both own price and own demand fall with additional separation, implying

\[
\frac{\partial\pi_R^*}{\partial r}<0.
\]

The firm cannot optimally choose further differentiation inside the price-reversal region on this branch.

## Global-price validity stop

The proven middle-price equilibrium supports the endogenous stationary location only up to

\[
\theta_G=\frac{126-28\sqrt2}{73}\approx1.183589.
\]

All proposed E×H uplift hypotheses are already killed before this boundary. Reopening alternative price/location branches beyond it would no longer be a minimal uplift test and is not authorized by the negative evidence.

## Uplift gate status

- [x] EB route protected / unchanged
- [x] P1 price-reversal frontier crossing — KILLED
- [x] P2 price-reversal-driven location regime change — KILLED
- [x] P3 private differentiation paradox — KILLED
- [x] Symbolic identity verification
- [x] E×H Hard Gate — FAILED

## Canonical Stage 3T files

- `analysis/STAGE_3T_P3_PRIVATE_DIFFERENTIATION_PARADOX_KILL.md`
- `analysis/STAGE_3T_P1_P2_MINIMAL_UPLIFT_CLOSEOUT.md`
- `verification/symbolic/p3_private_differentiation_paradox.py`
- `verification/symbolic/p1_p2_uplift.py`
- `reviews/STAGE_3T_P3_GATE_2026-09-03.md`
- `reviews/STAGE_3T_UPLIFT_CLOSEOUT_2026-09-03.md`

## Next action

Stop the experimental uplift route. Do not add new primitives to rescue P1/P2/P3.

Return to the frozen Stage 3Q Economics Bulletin route. Under the canonical workflow, the next task should be a narrow Stage 4R-EB minimal-model canonicalization using the already-proved Stage-3P mathematics, followed by a Stage 6R-EB novelty closeout and 5–7 page short-note construction.