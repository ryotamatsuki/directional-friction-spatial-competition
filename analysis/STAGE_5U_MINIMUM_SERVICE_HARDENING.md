# Stage 5U — Minimum-Service-Floor Mechanism Hardening

Date: 2026-09-04  
Workflow: `research-paper-workflow` v1.1 / Stage 5

## 1. Previous failure

Stage 4U returned

`CONDITIONAL GO — ZERO-FREQUENCY / TIPPING MULTIPLICITY PREVENTS GLOBAL PRICE-NASH CERTIFICATION`.

With a fixed total transit frequency and no service floor, a direction that loses shopping demand also loses operator frequency. This can create fulfilled-expectations multiplicity and profitable branch-jump price deviations. The local strategic-asymmetry theorem survived, but the exact Stage-3 witness was not a global retail-price Nash equilibrium.

## 2. One allowed modification

Impose a minimum service obligation in each direction:

\[
f_L\ge \underline f,\qquad f_R\ge \underline f,
\qquad 0<\underline f<F/2.
\]

Define

\[
q\equiv \underline f/F\in(0,1/2).
\]

Everything else is frozen: endpoint retailers, quadratic spatial cost, common marginal cost, fixed total fleet/frequency, directional background demand, demand-responsive third-party operator, and simultaneous retail prices.

This modification is institutionally standard rather than outcome-engineered. Transit planning and regulation commonly impose minimum frequency/headway or minimum service constraints together with fleet constraints. The floor directly targets the Stage-4 zero-service lock-in mechanism.

## 3. Revised operator block

If retailer L serves shopping share `x`, total directional demands are

\[
D_L=M+x,\qquad D_R=1-x.
\]

Without the floor, the waiting-cost-minimizing frequency share allocated to L is

\[
s^u(x,M)
=\frac{\sqrt{M+x}}{\sqrt{M+x}+\sqrt{1-x}}.
\]

With the floor, the unique operator solution is the clipped share

\[
s_q(x,M)=\min\{1-q,\max\{q,s^u(x,M)\}\},
\]

\[
f_L=Fs_q,\qquad f_R=F(1-s_q).
\]

Let

\[
A=w/F,
\qquad
h_q(x,M)=\frac1{s_q(x,M)}-\frac1{1-s_q(x,M)}.
\]

The fulfilled-expectations shopper condition is

\[
G_q(x;p_L,p_R)
=p_L-p_R+t(2x-1)+A h_q(x,M)=0.
\]

When the floor is slack, `h_q=H` from Stage 4. When a floor binds, `h_q` is constant and hence `G_{q,x}=2t`.

## 4. Exact global-survival witness

Normalize

\[
t=F=1,\qquad c=0.
\]

Take

\[
M=\frac23,
\qquad
q=\frac13,
\qquad
x^*=\frac{23}{40},
\]

and choose the waiting-cost intensity implied by the interior equilibrium-share equation:

\[
a\equiv \frac{w}{Ft}
=\frac{22797\sqrt{7599}}{7364680}
\approx0.2698373358.
\]

At `q=1/3`, the unconstrained left frequency share is already above `1/3` at `x=0`, so the L floor never binds on `[0,1]`. The R floor begins to bind exactly at

\[
x=\frac23.
\]

Hence

\[
h_q(x,2/3)=
\begin{cases}
H(x,2/3),&0\le x\le2/3,\\
-3/2,&2/3\le x\le1.
\end{cases}
\]

At the candidate equilibrium,

\[
s^*=\frac{\sqrt{149}}{\sqrt{149}+\sqrt{51}}
\approx0.6308955,
\]

so both service floors are strictly slack. Thus the floor does not generate the strategic-asymmetry result mechanically; it only regularizes sufficiently extreme off-equilibrium reallocations.

## 5. Global shopper continuation

For `x>=2/3`,

\[
G_{q,x}=2>0.
\]

For `x<=2/3`,

\[
g(x)=2+aH_x(x,2/3),
\]

with

\[
H_x=-\frac{(M+1)^2}{2[(M+x)(1-x)]^{3/2}}.
\]

On `[0,2/3]`, the smallest value of `(M+x)(1-x)` is attained at `x=2/3`. Therefore

\[
g(x)\ge g(2/3)
=\frac{47133952-341955\sqrt{7599}}{23566976}
\approx0.7351375>0.
\]

The strict positivity is exact because

\[
47133952^2-7599\cdot341955^2
=1333033876970329>0.
\]

Hence `G_q` is strictly increasing on the entire consumer interval. For every retail-price pair, the shopper/operator continuation is single-valued (with the usual corner demands when the unique zero lies outside `[0,1]`). The Stage-4 fulfilled-expectations multiplicity is removed.

## 6. Exact local equilibrium and strategic asymmetry

At `x*=23/40`, the floor is slack, so the Stage-4 interior formulas remain valid. Exact values are

\[
g^*=\frac{188234}{184117}>0,
\]

\[
g'^*=-\frac{1058400000}{466368361}.
\]

Own-price SOC terms are

\[
S_L=2g+xg'
=\frac{345013444}{466368361}>0,
\]

\[
S_R=2g-(1-x)g'
=\frac{82553732}{27433433}>0.
\]

Equilibrium prices are

\[
p_L^*=\frac{2164691}{3682340}
\approx0.58785745,
\]

\[
p_R^*=\frac{1599989}{3682340}
\approx0.43450333.
\]

The price-reaction slopes are

\[
\frac{dBR_L}{dp_R}
=-\frac{65891639}{172506722}
\approx-0.3819656<0,
\]

\[
\frac{dBR_R}{dp_L}
=\frac{27253433}{41276866}
\approx0.6602593>0.
\]

Thus the desired one-sided strategic substitutability survives the hardening modification unchanged at the equilibrium itself.

## 7. Global retail-price Nash certification

Because `G_q` is strictly increasing, any unilateral price choice maps to a unique market share. Holding the rival price fixed, a firm's global price problem can therefore be parameterized by `x`.

### L's deviation problem

On the unconstrained-frequency region `x in [0,2/3]`, write the operator share as

\[
s=\frac{\sqrt{M+x}}{\sqrt{M+x}+\sqrt{1-x}}.
\]

For `M=2/3`, `x(s)` and the waiting-cost difference are rational functions of `s`. Exact root isolation of the derivative of L's profit shows two genuine stationary points in the physical interval: the candidate

\[
x^*=23/40
\]

and a second point

\[
x\approx0.6528792,
\]

which is a local minimum. L's profit rises to `x*`, falls to the second stationary point, and then rises toward the floor boundary `x=2/3`.

In the binding-floor region `x>=2/3`, L's profit is a concave quadratic whose vertex lies below `2/3`, so its maximum on that region is attained at the boundary. Exact comparison gives

\[
\pi_L(x^*)-\pi_L(2/3)
=\frac{358680877-4103460\sqrt{7599}}{1325642400}
\approx0.0007340317>0.
\]

Therefore `x*` is L's global best response.

### R's deviation problem

Exact root isolation shows that `x*=23/40` is the only genuine stationary point of R's profit in the unconstrained-frequency region and is its maximum there.

In the binding-floor region, R's profit is a concave quadratic with an interior vertex near `x=0.704225`. Exact comparison gives

\[
\pi_R(x^*)-\max_{x\ge2/3}\pi_R(x)
\approx0.0096977873>0.
\]

Hence `x*` is R's global best response as well.

Therefore

\[
(p_L^*,p_R^*)
\]

is a global pure-strategy retail-price Nash equilibrium of the hardened model.

Exact candidate profits are

\[
\pi_L^*=\frac{49787893}{147293600},
\qquad
\pi_R^*=\frac{27199813}{147293600}.
\]

## 8. Open-set robustness

All decisive inequalities at the witness are strict:

- equilibrium floors are slack;
- global demand slope is bounded away from zero;
- both retail SOCs are strict;
- the two reaction slopes have opposite strict signs;
- both global-deviation profit gaps are strict.

Hence continuity implies a nonempty open neighborhood of primitives with the same equilibrium structure and strategic-asymmetry sign pattern.

A deterministic neighborhood audit with `q=1/3`, `M in [0.60,0.74]`, and candidate shares `x in [0.565,0.585]` generated 595 local strategic-asymmetry candidates satisfying the local equilibrium/SOC/floor-slack conditions. Of these, 444 also passed the monotone-continuation and global-deviation audit. This numerical exercise supports, but does not replace, the exact witness proof.

## 9. What changed relative to Stage 4

Stage 4 without a floor:

- zero-demand directions could receive zero frequency;
- the shopper/operator continuation was multiple;
- the exact strategic-asymmetry witness admitted profitable branch-jump deviations;
- no global price Nash could be certified.

Stage 5 with one minimum-service floor:

- continuation becomes globally single-valued for the exact witness;
- extreme price deviations cannot trigger a self-reinforcing collapse of service below the floor;
- the floor remains slack at the strategic-asymmetry equilibrium;
- a global pure price Nash with `BR_L'<0<BR_R'` exists on a nonempty open region.

The repair therefore fixes the diagnosed blocker without changing the equilibrium mechanism that generated the desired strategic effect.

## 10. New artefact and prior-art risks

### Not new

The project must not claim novelty for:

- minimum public-transit frequency standards;
- the Mohring demand-frequency feedback;
- vicious/virtuous cycles or multiple equilibria in bus demand-frequency systems;
- strategic asymmetry as a general game-theoretic concept.

Transit planning models routinely impose minimum frequency/headway and fleet constraints, and Bar-Yosef, Martens & Benenson (2013) explicitly model vicious/virtuous demand-frequency cycles with multiple equilibria.

### Remaining contribution candidate

The surviving proposition package is narrower:

> Directional background demand plus demand-responsive allocation of a scarce fixed transit fleet can endogenously make one downstream retailer's price a strategic substitute while the other's remains a strategic complement; a standard minimum-service obligation can remove off-equilibrium transit tipping without causing that strategic asymmetry, because the floor is slack at equilibrium.

The remaining risk is that this is still only a particular microfoundation of a generic nonlinear market-share externality. This is now a Stage-6 proposition-level novelty question, not a Stage-5 coherence failure.

## 11. Surviving propositions

- **P1 — Global continuation hardening:** a positive service floor can make the shopper/operator continuation globally single-valued while preserving endogenous frequency reallocation over the economically relevant interior.
- **P2 — Global directional strategic asymmetry:** the hardened model admits a global pure retail-price Nash equilibrium with `dBR_L/dp_R<0<dBR_R/dp_L`.
- **P3 — Non-mechanical floor:** there is an open region in which the service floor is slack at equilibrium and affects only sufficiently extreme deviations, so P2 is not directly imposed by the floor.
- **P4 — Nested interaction:** removing directional background demand or retail-responsive frequency destroys the curvature channel and restores symmetric local price complementarity in the minimum benchmarks.

## 12. Stage-5 verdict

# `GO TO NOVELTY RE-KILL`

The single authorized modification solves the exact Stage-4 blocker and leaves a coherent, non-mechanical strategic mechanism.

Next route: **Stage 6 — Proposition-Level Novelty Re-Kill**.

Freeze the hardened model. Do not add endogenous retailer locations, subsidies, retailer-funded transport, congestion, online channels, or additional heterogeneity before the surviving propositions are attacked against the closest literature.