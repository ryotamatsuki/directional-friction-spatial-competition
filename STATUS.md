# Project Status

Last updated: 2026-09-04

## Current state

**Stage 4U — Minimal Network-Mediated Model Gate**

Scientific verdict: `CONDITIONAL GO — ZERO-FREQUENCY / TIPPING MULTIPLICITY`

The Stage-3U preferred mechanism has been solved far enough to separate the genuine local strategic result from the global-equilibrium failure.

## Frozen model

Two endpoint retailers compete in prices. A third-party transit operator allocates a fixed total frequency F across the two directions in response to total directional passenger demand. Urban/left travel has exogenous background demand M; retail shopping demand is endogenous.

If L serves shopping share x,

\[
f_L=F\frac{\sqrt{M+x}}{\sqrt{M+x}+\sqrt{1-x}},
\qquad
f_R=F\frac{\sqrt{1-x}}{\sqrt{M+x}+\sqrt{1-x}}.
\]

With A=w/F,

\[
G(x)=p_L-p_R+t(2x-1)+A H(x,M)=0,
\]

\[
H(x,M)=\frac{1-M-2x}{\sqrt{(M+x)(1-x)}}.
\]

No retailer location, policy, congestion, retailer-funded service, online channel or extra heterogeneity is included.

## What Stage 4U established

### PASS — local mechanism

On a stable branch g=G_x>0,

\[
p_L-c=xg,\qquad p_R-c=(1-x)g.
\]

For a generic share-dependent externality Phi(x), opposite-signed price reaction slopes are possible exactly through curvature. In particular, L is a strategic substitute while R remains a complement when

\[
-\frac{2g}{x}<\Phi''(x)<-\frac{g}{x}.
\]

The transit operator microfounds Phi(x)=A H(x,M).

At the exact Stage-3 witness

\[
t=F=1,\quad M=\frac15,\quad x=\frac{11}{20},\quad w=\frac{27\sqrt{15}}{308},
\]

we have

\[
g=\frac{58}{77},\quad g'=-\frac{128}{77},
\]

both own-price SOCs hold, and

\[
\frac{dBR_L}{dp_R}=-\frac{31}{114}<0,
\qquad
\frac{dBR_R}{dp_L}=\frac{289}{434}>0.
\]

Moreover K_x=806/385>0, so the result extends to an open local parameter set by the implicit-function theorem.

### FAIL — shopper/operator uniqueness

In benchmark B1 with M=0 and equal retail prices,

\[
G(x)=(2x-1)\left[t-\frac{A}{\sqrt{x(1-x)}}\right].
\]

For 0<A/t<1/2 there are exactly three fulfilled-expectations fixed points:

\[
\frac12,
\quad
\frac{1\pm\sqrt{1-4(A/t)^2}}{2}.
\]

Only the center fixed point is locally stable. Thus the demand-frequency continuation is not globally single-valued without an equilibrium-selection refinement.

### FAIL — exact Stage-3 witness is not global price Nash

With c=0, the local candidate prices are

\[
p_L^*=\frac{29}{70},\qquad p_R^*=\frac{261}{770}.
\]

L's local profit is

\[
\pi_L^*=\frac{319}{1400}\approx0.227857.
\]

Holding p_R fixed, L can cut price to about 0.327081 and move the locally stable shopper/operator fixed point to x=18/25. Profit rises to about 0.235498. Thus the exact strategic-asymmetry witness fails the global unilateral-deviation test.

A deterministic grid audit retained 920 local strategic-asymmetry candidates satisfying stability and both price SOCs; all 920 had a profitable L move toward the right saddle-node boundary of the stable shopping branch.

## Nested benchmarks

- B0 fixed equal frequencies: standard endpoint quadratic Hotelling, p-c=t, both price BR slopes 1/2.
- B1 endogenous frequencies, M=0: stable symmetric markup p-c=t-2w/F and local BR slopes 1/2, but fulfilled-expectations multiplicity.
- B2 M>0 with shopping-unresponsive frequencies: directional intercept shift only; both local BR slopes 1/2.
- Full model: M>0 plus shopping-responsive residual frequency can create opposite-signed local BR slopes.

## Exact blocker

**Zero-frequency / tipping multiplicity.**

The same feedback that creates the interesting local curvature also makes low-demand directions lose service endogenously, generating coordination multiplicity and branch-jump price incentives.

## Single authorized Stage-5 modification

Impose a minimum public-service frequency in both directions:

\[
f_L\ge \underline f,\qquad f_R\ge \underline f,
\qquad 0<\underline f<F/2.
\]

Everything else remains frozen.

Stage 5 must test whether this one modification restores a globally well-defined shopper continuation and a global pure-strategy price equilibrium while preserving an open strategic-asymmetry region. If not, kill the branch.

## Novelty warning

The local strategic-asymmetry condition is a generic curvature result in a Hotelling model with a nonlinear market-share externality. If Stage 5 succeeds, Stage 6 must still determine whether the fixed-fleet transit microfoundation contributes a genuinely new transport-institution theorem rather than only one implementation of known network-effect logic.

## Gate status

- [x] Stage 3U mechanism search — CONDITIONAL GO
- [x] Stage 4U frozen minimal model
- [x] operator solution
- [x] shopper fixed-point analysis
- [x] local price FOCs/SOCs
- [x] open-set strategic-asymmetry proof
- [x] B0/B1/B2 benchmark recovery
- [x] exact global-deviation counterexample
- [x] deterministic numerical deviation audit
- [ ] Stage 5 minimum-service-floor hardening
- [ ] Stage 6 novelty re-kill
- [ ] welfare — blocked
- [ ] endogenous retailer location — blocked
- [ ] policy extension — blocked

## Canonical Stage 4U files

- `model/STAGE_4U_FROZEN_MINIMAL_MODEL.md`
- `analysis/STAGE_4U_MINIMAL_MODEL_GATE.md`
- `verification/symbolic/stage4u_minimal_model_gate.py`
- `verification/numerical/stage4u_global_deviation_audit.py`
- `reviews/STAGE_4U_MINIMAL_MODEL_GATE_2026-09-04.md`

## Next action

Proceed to **Stage 5 — Mechanism Hardening** with the minimum-service-floor modification only.