# Stage 7U — Welfare / Generality Gate

Date: 2026-09-04
Workflow: `research-paper-workflow` v1.1 / `templates/STAGE_07_WELFARE_GENERALITY.md`

## Executive verdict

# `GO TO STAGE 7.5`

The Stage-6 narrow full-game contribution survives welfare accounting and institutional validation. The model yields a real private/social allocation wedge, not a transfer artifact, and the transport operator creates an exact envelope identity linking individual access-cost differences to marginal aggregate waiting cost.

The paper should be frozen and positioned as a **transport/spatial-competition theory paper** rather than a general theorem about network effects or strategic asymmetry.

## Exact welfare accounting

Shopper consumer surplus is integrated exactly. Retail price payments cancel against producer surplus. Including background passenger waiting costs, total welfare is

\[
TW=v+M\bar v-c-C_q(x),
\]

with

\[
C_q(x)=\frac{t}{3}[x^3+(1-x)^3]
+A\left[\frac{M+x}{s_q}+\frac{1-x}{1-s_q}\right].
\]

Therefore the welfare result is a real travel/waiting-cost allocation result.

## Transport-specific envelope result

When the floor is slack, the operator's minimized aggregate waiting cost is

\[
J(x)=A(\sqrt{M+x}+\sqrt{1-x})^2.
\]

The envelope theorem gives

\[
J'(x)=A H(x,M),
\]

which is exactly the directional waiting-cost difference entering the shopper indifference condition. Hence

\[
p_L-p_R+C'(x)=0,
\qquad C'(x)=t(2x-1)+AH(x,M).
\]

This gives welfare content unavailable from an unspecified reduced-form externality alone.

## Private/social wedge

On a stable interior price equilibrium,

\[
p_L-c=xC''(x),\qquad p_R-c=(1-x)C''(x),
\]

so

\[
C'(x^{NE})=-(2x^{NE}-1)C''(x^{NE}).
\]

At the exact witness `x_NE=23/40>1/2`, the derivative is

\[
C'(x^{NE})=-282351/1841170<0.
\]

Thus the decentralized price equilibrium under-concentrates demand toward the high-background-demand/urban side relative to the second-best planner.

With `q=1/3`, the second-best share is

\[
x^{SB}=1/2+3A/4\approx0.702378,
\]

and the real-cost gain relative to the decentralized equilibrium is approximately `0.011378`, about 1.22% of decentralized real cost under the witness normalization.

## First-best / second-best distinction

Without the service obligation, the exact witness's utilitarian first-best is the corner `x=1`, because the operator can concentrate all service on the high-demand direction. This demonstrates that the service floor embodies a coverage/service-availability objective absent from the utilitarian welfare function.

Therefore the paper must use the floor-constrained second-best as the relevant planner benchmark and must not claim that the minimum service standard is first-best efficient.

## Nonbinding service-standard support band

For the exact witness, analytic partition of the global deviation problems and root isolation yield an intermediate interval

\[
q_L\approx0.324091<q<q_U\approx0.344228.
\]

Inside this interval the same global strategic-asymmetry price equilibrium is supported and the floor remains slack at equilibrium. On-path prices, shares, frequencies and welfare are therefore invariant to `q` inside the support band.

Too small a floor permits the original L tipping deviation; too large a floor creates a profitable R deviation. This is an implementation result, not an optimal-regulation theorem.

## Generality

### Waiting technology

For `a(f)=w f^{-rho}`, `rho>0`, the operator allocation remains closed form and the envelope identity survives. Because all equilibrium inequalities at `rho=1` are strict, the global result persists for an open neighborhood of waiting technologies. Deterministic audit confirms a conservative robustness range `rho in [0.95,1.01]` for the witness primitives.

### Institutional settings

The mechanism maps without a new strategic primitive to:

1. directional fixed-route/shuttle operations with deadheading or short-turning under imbalanced demand and minimum headways;
2. demand-responsive/shared-mobility fleets repositioned across zones with minimum service requirements.

The second mapping is institutionally cleaner because service capacity is naturally reallocable across zones.

## Institutional audit

- minimum headway/frequency standards: **ESTABLISHED**;
- service adjustments based on passenger load/ridership: **ESTABLISHED at planning level**;
- directional service asymmetry through deadheading/short-turning: **ESTABLISHED in operations literature / SUGGESTIVE for direct mapping**;
- fixed fleet as shared resource: **ESTABLISHED**;
- DRT dynamic allocation/repositioning: **ESTABLISHED as technology**;
- an ordinary retailer being large enough to change frequency: **UNVERIFIED**;
- Umeda–Minami-Kusatsu as a literal empirical case: **UNVERIFIED**.

The paper should therefore interpret firms as large destinations/commercial clusters when using public-transit motivation.

## Empirical predictions retained

1. retail/destination demand shocks shift service allocation only under demand-responsive service;
2. fixed fleet implies a cross-rival service effect;
3. sufficiently asymmetric background demand can produce opposite-signed downstream price responses;
4. service floors create a kink in the demand-to-frequency response;
5. larger fleet weakens the mechanism;
6. larger background directional demand strengthens the high-demand-side share/price advantage.

## Killed / prohibited policy claims

Do not infer optimal subsidies, optimal fleet expansion, endogenous retailer location, land-use policy, or equity benefits. Equity/coverage is not in the welfare function.

## Remaining concerns

1. individual-retailer scale is the main institutional weakness;
2. literal long-run directional frequency independence is too strong for a conventional balanced fixed route unless deadheading/short-turning/repositioning is available;
3. reduced-form network-externality absorption remains a positioning threat, although the operator-envelope welfare identity provides additional structure.

These are major exposition/positioning concerns, not fatal model failures.

## Final route

`GO TO STAGE 7.5 — FREEZE DECISION`

Stage 7.5 should decide whether to freeze the current architecture for paper construction. No extensions are authorized before that decision.