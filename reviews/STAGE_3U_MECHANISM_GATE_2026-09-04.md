# Stage 3U — Network-Mediated Directionality Mechanism Gate

Date: 2026-09-04
Workflow: `ryotamatsuki/research-paper-workflow` Stage 3

## 1. Executive verdict

**CONDITIONAL GO — PROMOTE ONE MINIMAL CANDIDATE TO STAGE 4 KILL TEST.**

The project should not return to the killed primitive `theta(y-x)_+`. Instead, Stage 3U replaces exogenous directional friction with a transport-network institution: a third-party operator reallocates a fixed fleet across directions in response to passenger demand, while exogenous background commuting is directionally asymmetric.

The preferred candidate survives Stage-3 preflight because it can generate a price strategic asymmetry that disappears in all three minimum nested benchmarks.

## 2. Candidate screen

Ten strategic-variable candidates were screened. The top three are:

1. **A — demand-responsive directional transit-frequency allocation** — preferred;
2. **B — one-way shared-route access-investment spillover** — backup only;
3. **C — shared-corridor congestion / raising rival access cost** — backup only.

Firm-specific access investment, free shopping shuttles, generic infrastructure competition, delivery bypass, trip chaining, endogenous consumer location, and generic network/congestion externalities were killed by direct prior-art overlap or insufficiently distinct feedback.

## 3. Preferred mechanism

Let retail share `x` determine shopping demand. Background urban-bound demand is `M`. A transit operator allocates fixed total frequency `F` by minimizing

\[
w\left(\frac{M+x}{f_L}+\frac{1-x}{f_R}\right),
\qquad f_L+f_R=F.
\]

The unique frequency rule is

\[
f_L=F\frac{\sqrt{M+x}}{\sqrt{M+x}+\sqrt{1-x}},
\qquad
f_R=F\frac{\sqrt{1-x}}{\sqrt{M+x}+\sqrt{1-x}}.
\]

This generates a feedback absent from ordinary Hotelling:

> retail price -> retail demand -> direction-specific service allocation -> waiting cost -> retail demand.

Because `F` is fixed, extra demand to one direction also removes service from the other direction.

## 4. Algebraic preflight

The shopper fixed-point equation can be written

\[
G=p_L-p_R+t(2x-1)+\frac{w}{F}H(x,M)=0,
\]

where

\[
H(x,M)=\frac{1-M-2x}{\sqrt{(M+x)(1-x)}}.
\]

Define `g=G_x`. Exact symbolic work verifies

\[
H_x=-\frac{(M+1)^2}{2[(M+x)(1-x)]^{3/2}}<0.
\]

Thus demand-responsive frequency amplifies retail price sensitivity.

At `M=0`, `x=1/2`,

\[
p-c=t-\frac{2w}{F}.
\]

A marginal increase in background urban-bound demand gives

\[
\left.\frac{dx^*}{dM}\right|_{M=0}
=\frac{w}{3(Ft-2w)}>0,
\]

and

\[
\left.\frac{d(p_L^*-p_R^*)}{dM}\right|_{M=0}
=\frac{4w}{3F}>0.
\]

## 5. Strongest theorem target — one-sided strategic asymmetry

Let `g'=G_xx`. Local price best-response slopes are

\[
\frac{dBR_L}{dp_R}=\frac{g+xg'}{2g+xg'},
\qquad
\frac{dBR_R}{dp_L}=\frac{g-(1-x)g'}{2g-(1-x)g'}.
\]

The preferred model has an exact local-equilibrium witness with opposite signs. Normalize `t=F=1` and set

\[
M=\frac15,
\quad x=\frac{11}{20},
\quad w=\frac{27\sqrt{15}}{308}.
\]

Then

\[
g=\frac{58}{77},
\qquad g'=-\frac{128}{77},
\]

both own-price SOC terms are positive, and

\[
\frac{dBR_L}{dp_R}=-\frac{31}{114}<0,
\qquad
\frac{dBR_R}{dp_L}=\frac{289}{434}>0.
\]

So the full architecture can make the urban-side retailer treat the rival price as a strategic substitute while the rural-side retailer still treats the urban price as a strategic complement.

## 6. Nested-benchmark test

The effect disappears in:

- **B0 fixed equal frequency:** `g'=0`, both slopes `1/2`;
- **B1 endogenous frequency with `M=0`:** symmetry gives `H_xx=0` at equilibrium, both slopes `1/2`;
- **B2 directional background demand with frequency exogenous to retail demand:** access asymmetry shifts the demand intercept but does not create demand-curvature feedback, so both slopes remain `1/2` in the quadratic Hotelling benchmark.

The full model therefore has a credible interaction result requiring both directional background demand and endogenous fixed-fleet service reallocation.

## 7. Prior-art attack

The route does **not** claim that strategic asymmetry is a new concept. Tombak (2006) already studies games where one firm sees a strategic complement and the other a strategic substitute.

The route also does **not** claim that traffic direction or transport-network price interactions are new. Houde (2012) makes retail spatial differentiation depend on road-network structure and traffic direction, while recent transport-network work contains both strategic-complement and strategic-substitute price channels. Endogenous transit frequency and Mohring effects are also mature topics.

The apparent contribution gap is narrower:

> a third-party fixed-fleet transit allocation rule, responding to downstream retail-generated directional demand, can endogenously create one-sided strategic substitutability in otherwise Bertrand-Hotelling retail prices.

No exact prior paper matching this mechanism-result pair was located in searches through 2026-09-04. This is an apparent gap only, not a frozen novelty claim.

## 8. Exact blocker

**Whole-game novelty versus reduced-form network-externality models.**

A sufficiently flexible Hotelling network-effect model may replicate the reduced-form demand curvature. Stage 4 must determine whether the transit-operator microfoundation produces economically meaningful restrictions, thresholds, welfare implications or comparative statics that are not simply a relabeling of a known network externality.

## 9. Stage-4 contract

Freeze the model at endpoint retailers + fixed fleet + background directional demand + third-party operator response.

Stage 4 must:

1. solve the operator-shopper fixed point globally;
2. derive global retail price best responses and equilibrium existence/uniqueness;
3. characterize an **open parameter region** of strategic asymmetry, not one witness point;
4. prove the B0/B1/B2 benchmark recoveries;
5. attack equivalence to generic network-effect Hotelling models;
6. only then derive welfare.

Do not add endogenous retailer location, subsidies, retailer service investment, congestion, delivery, or heterogeneity during this kill test.

## 10. Final verdict

`CONDITIONAL GO`.

Route: **Stage 4 minimal-model kill test for Candidate A only.**