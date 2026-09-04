# Project Status

Last updated: 2026-09-04

## Current state

**Stage 7U — Welfare, Generality & Institutional Validation**

Scientific verdict: `GO TO STAGE 7.5`

The Stage-6 narrow full-game contribution survives welfare accounting and institutional validation. The paper should now be treated as a **transport / spatial-competition theory paper**, not as a general novelty claim about strategic asymmetry or Hotelling network effects.

## Frozen surviving contribution set

- **S1 — Network-mediated downstream strategic asymmetry:** a third-party demand-responsive fixed-fleet allocation mechanism with directional background demand supports a nonempty open set of global Hotelling-Bertrand equilibria with `BR_L' < 0 < BR_R'`.
- **S2 — Off-equilibrium support by a slack service obligation:** a minimum service floor can be strictly slack at equilibrium yet support the global equilibrium by truncating only extreme off-equilibrium service collapse.
- **S3 — Interaction identification:** S1 disappears under fixed frequency, no directional background demand, or retail-unresponsive frequency.

All Stage-6 killed novelty claims remain dead.

## Exact welfare identity

Shopper CS is integrated exactly. Retail prices cancel against producer surplus. Including background-passenger waiting costs,

\[
TW=v+M\bar v-c-C_q(x),
\]

where

\[
C_q(x)=\frac{t}{3}[x^3+(1-x)^3]
+A\left[\frac{M+x}{s_q(x,M)}+\frac{1-x}{1-s_q(x,M)}\right].
\]

Thus the welfare comparison is entirely in real spatial and waiting costs.

## Transport-specific envelope structure

When the service floor is slack, the operator minimizes aggregate waiting cost and

\[
J(x)=A(\sqrt{M+x}+\sqrt{1-x})^2.
\]

The envelope theorem gives

\[
J'(x)=AH(x,M),
\]

which is exactly the directional waiting-cost difference in shopper choice. Hence

\[
p_L-p_R+C'(x)=0.
\]

This is the strongest Stage-7 defense against complete reduced-form absorption: the operator microfoundation identifies not only demand curvature but also its exact real-welfare counterpart.

## Private/social wedge

On a stable interior price equilibrium,

\[
C'(x^{NE})=-(2x^{NE}-1)C''(x^{NE}).
\]

At the exact hardened witness

\[
t=F=1,\ c=0,\ M=2/3,\ q=1/3,\ x^{NE}=23/40,
\]

we have

\[
C'(x^{NE})=-282351/1841170<0.
\]

Thus the decentralized equilibrium allocates too little shopping demand to the high-background-demand urban side relative to the floor-constrained second best.

For `q=1/3`,

\[
x^{SB}=\frac12+\frac{3A}{4}\approx0.702378,
\]

and the second-best real-cost gain relative to the decentralized equilibrium is approximately `0.011378`, about 1.22% of decentralized real cost under the witness normalization.

Without the service obligation, the witness's utilitarian first-best is the corner `x=1`. This is not a policy recommendation; it shows that the service floor embodies a coverage/service-availability objective absent from the current utilitarian welfare function.

## Nonbinding service-floor support band

For the exact witness, the same equilibrium is a strict global Nash while the floor is slack for an intermediate interval approximately

\[
0.324091<q<0.344228.
\]

Inside the interval, on-path prices, shares, service allocation and welfare are unchanged by `q`; the rule acts only through off-equilibrium continuations.

Too weak a floor permits the original urban-side tipping deviation; too strong a floor creates a profitable rural-side deviation.

## Functional-form generality

The mechanism generalizes from `w/f` to

\[
a(f)=w f^{-\rho},\qquad \rho>0.
\]

The fixed-fleet allocation remains closed form and the operator envelope identity survives. Strict Stage-5 inequalities imply local robustness around `rho=1`; deterministic audit confirms a conservative global-equilibrium robustness range `rho in [0.95,1.01]` for the witness primitives.

## Institutional validation

- minimum service/headway standards — **ESTABLISHED**;
- service planning responds to load/ridership — **ESTABLISHED at planning level**;
- directional imbalance can support deadheading/short-turning and unequal effective directional service — **ESTABLISHED in operations literature / SUGGESTIVE for direct mapping**;
- fixed fleet as shared resource — **ESTABLISHED**;
- demand-responsive fleet allocation/repositioning — **ESTABLISHED as technology**;
- an ordinary individual retailer being large enough to move frequency — **UNVERIFIED**;
- Umeda–Minami-Kusatsu as a literal empirical application — **UNVERIFIED**.

The preferred interpretation is therefore large commercial destinations/clusters, directional shuttle/deadheading settings, or demand-responsive/shared-mobility service zones.

## Generality settings

1. fixed-route/shuttle systems with deadheading or short-turning under directional passenger imbalance;
2. DRT/shared-mobility fleets dynamically repositioned across zones.

These use the same strategic mechanism without adding a new player or decision margin.

## Empirical predictions

- destination demand shocks reallocate service only under demand-responsive supply;
- fixed fleet creates a cross-rival service effect;
- directional background demand can make downstream price reactions have opposite signs;
- a minimum service floor creates a kink in the demand-to-frequency mapping;
- larger fleet weakens the mechanism;
- larger background directional demand shifts share and relative price toward the high-demand side.

## Policy scope

The only modeled policy instrument is the minimum service share `q`.

Do not claim optimal subsidies, optimal fleet investment, endogenous retailer location, land-use policy, or equity benefits. Equity is not in the welfare objective.

## Gate status

- [x] Stage 3U mechanism search
- [x] Stage 4U minimal model gate
- [x] Stage 5U mechanism hardening
- [x] Stage 6U proposition-level novelty re-kill
- [x] Stage 7U exact CS / producer surplus / welfare derivation
- [x] private versus social allocation map
- [x] first-best versus floor-constrained second-best distinction
- [x] nonbinding service-floor implementation band
- [x] functional-form generality audit
- [x] institutional evidence classification
- [x] empirical prediction set
- [ ] Stage 7.5 freeze decision
- [ ] Stage 8 theory freeze
- [ ] paper construction

## Canonical Stage-7 files

- `analysis/STAGE_7U_WELFARE_GENERALITY.md`
- `literature/STAGE_7U_INSTITUTIONAL_VALIDATION.md`
- `verification/symbolic/stage7u_welfare_generality.py`
- `verification/numerical/stage7u_power_waiting_robustness.py`
- `reviews/STAGE_7U_WELFARE_GENERALITY_GATE_2026-09-04.md`

## Next action

Proceed to **Stage 7.5 — Freeze Decision**.

No extensions are authorized before the freeze decision.