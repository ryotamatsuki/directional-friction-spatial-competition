# Project Status

Last updated: 2026-09-03

## Frozen publication route

**Stage 3Q — Economics Bulletin short-note route remains FROZEN / GO.**

The frozen proposition, proof, and novelty re-kill on `stage3q/eb-proposition-novelty-rekill` are unchanged. The EB note remains independently viable.

## Experimental uplift route

**Stage 3T — E × H Uplift Test**

Current verdict: `NO-GO — P3 PRIVATE DIFFERENTIATION PARADOX KILLED`

This branch tests whether endogenous location can generate a theorem that exists only through the interaction of the Stage-3Q price-reversal effect (E) and the directional-exposure location channel (H).

### P3 tested

> The directionally exposed firm may choose greater spatial differentiation even when greater differentiation lowers its own equilibrium price.

### Result

On the frozen middle-sharing price-equilibrium branch,

\[
D_R^*=\frac{4r-r^2+2\theta-\theta r}{3(2r+\theta)}
\]

and

\[
\frac{\partial D_R^*}{\partial r}
=-\frac{2r^2+2r\theta+\theta^2}{3(2r+\theta)^2}<0.
\]

In the Stage-3Q price-reversal region,

\[
\frac{\partial p_R^*}{\partial r}<0.
\]

Because the active firm's price margin and demand both fall with `r`,

\[
\boxed{\frac{\partial\pi_R^*}{\partial r}<0}
\]

throughout that branch. Therefore the proposed private differentiation paradox cannot occur there.

### Exact witness

At `r=4/5`, `theta=5/2`,

\[
\frac{\partial p_R^*}{\partial r}=-\frac1{30}<0,
\qquad
\frac{\partial\pi_R^*}{\partial r}
=-\frac{55322}{126075}<0.
\]

## Uplift gate status

- [x] EB route protected / unchanged
- [x] P3 minimal endogenous-location test
- [x] Symbolic identity verification
- [x] P3 verdict — **KILLED**
- [ ] P1 price-reversal-frontier crossing — untested
- [ ] P2 location-response regime change — untested

## Canonical Stage 3T files

- `analysis/STAGE_3T_P3_PRIVATE_DIFFERENTIATION_PARADOX_KILL.md`
- `verification/symbolic/p3_private_differentiation_paradox.py`
- `reviews/STAGE_3T_P3_GATE_2026-09-03.md`

## Next action

Do not attempt to rescue P3 by adding new primitives or branch jumps. Either:

1. stop the uplift route and return to the frozen Economics Bulletin note; or
2. run a separately defined P1 or P2 hard-kill while preserving Stage 3Q unchanged.
