# Stage 4U — Minimal Model Gate

Date: 2026-09-04
Workflow: research-paper-workflow v1.1 / Stage 4

## 1. Executive verdict

`CONDITIONAL GO — ONE BLOCKER: ZERO-FREQUENCY / TIPPING MULTIPLICITY PREVENTS GLOBAL PRICE-NASH CERTIFICATION`

The Stage-3U local strategic-asymmetry result is mathematically real and holds on an open set of local equilibria. However, the same demand-responsive fixed-fleet feedback creates fulfilled-expectations multiplicity and profitable branch-jump deviations. The exact Stage-3 witness is not a global Nash equilibrium of the retail price game.

The model therefore cannot proceed directly to Stage 6 in its current form. A single targeted Stage-5 modification is authorized: impose an institutionally motivated minimum service floor in each direction. No other primitive may change.

## 2. Exact model

The frozen model is in `model/STAGE_4U_FROZEN_MINIMAL_MODEL.md`.

For A=w/F,

\[
H(x,M)=\frac{1-M-2x}{\sqrt{(M+x)(1-x)}}
\]

and the shopper/operator fulfilled-expectations condition is

\[
G(x)=p_L-p_R+t(2x-1)+A H(x,M)=0.
\]

Exact derivatives are

\[
H_x=-\frac{(M+1)^2}{2[(M+x)(1-x)]^{3/2}}<0,
\]

\[
H_{xx}=-\frac{3(M+1)^2(M+2x-1)}{4[(M+x)(1-x)]^{5/2}}.
\]

Define

\[
g=G_x=2t+A H_x.
\]

A natural frequency-demand iteration is locally stable iff g>0.

## 3. Operator solution

For every interior x, the operator problem is strictly convex on the fixed-sum frequency simplex and has the unique interior solution

\[
f_L=F\frac{\sqrt{M+x}}{\sqrt{M+x}+\sqrt{1-x}},
\qquad
f_R=F\frac{\sqrt{1-x}}{\sqrt{M+x}+\sqrt{1-x}}.
\]

Thus the first source of multiplicity is not the operator conditional on x; it is the feedback from x to frequency and back to x.

## 4. Exact fixed-point multiplicity theorem in benchmark B1

Set M=0 and p_L=p_R. Then

\[
G(x)=(2x-1)\left[t-\frac{A}{\sqrt{x(1-x)}}\right].
\]

Let a=A/t=w/(Ft). If

\[
0<a<\frac12,
\]

there are exactly three interior fulfilled-expectations shopper/operator fixed points:

\[
x_0=\frac12,
\]

\[
x_- = \frac{1-\sqrt{1-4a^2}}{2},
\qquad
x_+ = \frac{1+\sqrt{1-4a^2}}{2}.
\]

At the center,

\[
g(x_0)=2t-4A>0,
\]

so x_0 is locally stable under the natural frequency-demand iteration. At the outer roots, x(1-x)=a^2 and

\[
g(x_\pm)=t\left(2-\frac{1}{2a^2}\right)<0,
\]

so both outer roots are locally unstable.

Therefore the symmetric frequency-feedback benchmark is not globally single-valued even in the parameter region supporting a positive local retail markup. Selecting the stable branch is an equilibrium refinement, not a mathematical identity.

## 5. Local retail price equilibrium

On any differentiable stable branch,

\[
\frac{\partial x}{\partial p_L}=-\frac1g,
\qquad
\frac{\partial x}{\partial p_R}=\frac1g.
\]

Retail FOCs imply

\[
p_L-c=xg,
\qquad
p_R-c=(1-x)g.
\]

The equilibrium-share equation is

\[
K(x,M)=(2x-1)g+t(2x-1)+A H(x,M)=0.
\]

The own-price SOC terms are

\[
S_L=2g+xg',
\qquad
S_R=2g-(1-x)g',
\]

where g'=A H_{xx}. Local own-price concavity requires S_L>0 and S_R>0.

## 6. General reduced-form theorem: what actually drives strategic asymmetry

Consider any differentiated Hotelling price game whose fulfilled-expectations demand equation can be written

\[
p_L-p_R+t(2x-1)+\Phi(x)=0.
\]

Let

\[
g=2t+\Phi'(x)>0.
\]

At a local price equilibrium satisfying the SOCs,

\[
\frac{dBR_L}{dp_R}
=\frac{g+x\Phi''}{2g+x\Phi''},
\]

\[
\frac{dBR_R}{dp_L}
=\frac{g-(1-x)\Phi''}{2g-(1-x)\Phi''}.
\]

Hence L is a strategic substitute while R remains a strategic complement iff

\[
-\frac{2g}{x}<\Phi''(x)<-\frac{g}{x}.
\]

Symmetrically, R is a strategic substitute while L remains a complement iff

\[
\frac{g}{1-x}<\Phi''(x)<\frac{2g}{1-x}.
\]

This establishes that the sign reversal is fundamentally a curvature result. In the transit model,

\[
\Phi(x)=A H(x,M),
\]

so the fixed-fleet transit institution microfounds the required curvature; it does not make strategic asymmetry conceptually unique to transportation.

This is a mandatory Stage-6 novelty threat if Stage 5 repairs the global-equilibrium problem.

## 7. Exact open-set result for local strategic asymmetry

The Stage-3 exact witness is

\[
t=F=1,\quad M=\frac15,\quad x=\frac{11}{20},\quad w=\frac{27\sqrt{15}}{308}.
\]

It satisfies

\[
g=\frac{58}{77}>0,
\qquad
g'=-\frac{128}{77},
\]

\[
S_L=\frac{228}{385}>0,
\qquad
S_R=\frac{124}{55}>0,
\]

and

\[
\frac{dBR_L}{dp_R}=-\frac{31}{114}<0,
\qquad
\frac{dBR_R}{dp_L}=\frac{289}{434}>0.
\]

Moreover,

\[
K_x=3g+(2x-1)g'=\frac{806}{385}>0.
\]

Thus the implicit-function theorem applies. Because all inequalities are strict, there is an open neighborhood in primitive-parameter space in which a local equilibrium exists smoothly and the two price-reaction slopes retain opposite signs.

Therefore Stage 3U's non-emptiness claim is strengthened from an isolated exact point to an open local region.

## 8. Exact witness fails global price Nash

Normalize c=0 at the same witness. The local FOCs imply

\[
p_L^*=\frac{29}{70},
\qquad
p_R^*=\frac{261}{770},
\]

and

\[
\pi_L^*=\frac{319}{1400}\approx0.227857.
\]

Hold p_R at p_R^* and let L deviate to a price that supports the stable fixed point

\[
x_d=\frac{18}{25}=0.72.
\]

The required deviation price is

\[
p_L^d
=p_R^*-t(2x_d-1)-A H(x_d,M)
\approx0.327081.
\]

At this fixed point,

\[
g(x_d)>0,
\]

so the deviation remains on the locally stable shopper/operator branch. Its profit is

\[
\pi_L^d=p_L^d x_d\approx0.235498
>\pi_L^*.
\]

The gain is approximately

\[
0.007641>0.
\]

Thus the exact Stage-3 strategic-asymmetry witness is not a global Nash equilibrium of the retail price game even after selecting the locally stable shopper/operator branch.

The mechanism is intuitive: a sufficiently large price cut moves demand toward L, the operator reallocates scarce frequency toward L, and that service improvement further shifts retail demand. The local price FOC does not control this branch-jump incentive.

## 9. Numerical global-deviation audit

A deterministic grid audit parameterizes local price-equilibrium candidates by (M,x) and solves the equilibrium-share equation for A/t. It then retains only points satisfying

- A/t>0;
- g>0;
- both price SOCs;
- dBR_L/dp_R<0<dBR_R/dp_L.

On a grid with

- M in [0.02,1.50], 150 values;
- x in [0.05,0.95], 181 values,

920 local strategic-asymmetry candidates survive those filters.

For every one of the 920 candidates, L obtains a higher limiting profit by moving toward the right-hand saddle-node boundary of the stable shopper/operator branch. No globally robust strategic-asymmetry candidate was found in this audit.

A separate 100,000-draw random reconnaissance over a wider range found 1,838 qualifying local strategic-asymmetry candidates and again no survivor of the same tipping-deviation test. This random check is supporting evidence only; the deterministic script is canonical.

The numerical evidence does not substitute for a universal nonexistence proof, but it strongly diagnoses the same economic blocker exposed by the exact witness.

## 10. Nested benchmark recovery

### B0 — fixed equal frequencies

Waiting-cost terms cancel from the consumer comparison. Demand is

\[
x=\frac12+\frac{p_R-p_L}{2t}.
\]

The standard endpoint quadratic-Hotelling equilibrium is

\[
p_L=p_R=c+t,
\]

and both price best-response slopes equal 1/2.

### B1 — endogenous frequencies, M=0

The stable symmetric fixed point is x=1/2 and

\[
p-c=t-2w/F.
\]

At x=1/2, H_{xx}=0, so both local price reaction slopes remain 1/2. However, the fulfilled-expectations subgame has the exact three-root multiplicity characterized above whenever 0<w/(Ft)<1/2.

### B2 — directional background demand but retail-unresponsive frequencies

If direction-specific frequencies are fixed with respect to shopping share, waiting-cost asymmetry enters the consumer comparison only as an intercept shift. The demand slope remains affine in the price difference, so both price best-response slopes are 1/2 in the quadratic benchmark.

### Full architecture

Only M>0 together with retail-responsive fixed-fleet frequency creates H_{xx}!=0 and permits opposite-signed local reaction slopes.

Thus the interaction result genuinely disappears in B0/B1/B2. What fails is global price-Nash support under the current zero-floor service rule.

## 11. Consumer surplus / welfare

`BLOCKED / NOT DERIVED.`

Stage 4 requires a well-defined equilibrium allocation before welfare is promoted. Because the current model fails global price-Nash certification and has fulfilled-expectations multiplicity, welfare calculations would depend on an unresolved selection rule and are intentionally deferred.

## 12. Candidate-proposition kill table

| Candidate proposition | Stage-4 result |
|---|---|
| Demand-responsive frequency amplifies local price sensitivity | PASS |
| M raises urban-side local share and relative price near M=0 | PASS locally |
| Opposite-signed retail price reaction slopes occur | PASS on an open set of local equilibria |
| Effect disappears in B0/B1/B2 | PASS |
| Shopper/operator fixed point is unique | FAIL — exact multiplicity even in B1 |
| Stage-3 witness is a global retail price Nash equilibrium | FAIL — exact profitable deviation |
| Open set of global strategic-asymmetry price equilibria exists | NOT ESTABLISHED; numerical audit strongly negative |
| Welfare theorem can be stated now | BLOCKED |

## 13. Exact diagnosed blocker

**Zero-frequency / tipping multiplicity.**

With no minimum service obligation, demand-responsive fixed-fleet allocation makes low-demand directions lose frequency endogenously. This creates self-reinforcing fulfilled-expectations multiplicity and branch-jump incentives in price competition. The local strategic-asymmetry region is therefore not enough to define the global price game.

## 14. Single authorized Stage-5 repair

Stage 5 may change exactly one primitive:

\[
f_L\ge \underline f,\qquad f_R\ge \underline f,
\qquad 0<\underline f<F/2.
\]

Interpretation: a minimum public-service frequency in each direction.

The operator still reallocates the residual fleet endogenously, so the Stage-3U feedback is preserved. Stage 5 must test whether a service floor can simultaneously:

1. remove zero-service lock-in / restore a globally well-defined shopper continuation;
2. preserve a nonempty open region with opposite-signed price reaction slopes;
3. support a global pure-strategy retail price equilibrium;
4. retain B0/B1/B2 nesting;
5. avoid making the result depend mechanically on the floor itself.

No other modification is authorized.

## 15. Canonical verdict and route

`CONDITIONAL GO`

Route: **Stage 5 — Mechanism Hardening**.

Do not add retailer location, policy subsidy, congestion, retailer investment, or welfare until the minimum-service-floor hardening either passes or kills the branch.