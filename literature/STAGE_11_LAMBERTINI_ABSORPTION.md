# Stage 11 — Lambertini / Virtual-Location Absorption Audit

Date: 2026-09-03

## Verdict

**FATAL TO THE CURRENT LSRS NOVELTY CLAIM.**

The directional model remains mathematically valid, but its headline opposite-price comparative static is not a new directional-friction phenomenon. On the branch that contains the frozen equilibrium cutoff, the directional primitive is exactly transformable into a standard quadratic Hotelling problem with a virtual right-hand location and a constant vertical-quality advantage. The reversal condition is exactly the condition that the virtual location passes the standard unconstrained-Hotelling threshold at which the right firm's price begins to fall as it is moved farther right.

## 1. Exact transformation on the equilibrium-support branch

For consumers with `x<r`, the right firm's directional access cost is

\[
(r-x)^2+\theta(r-x).
\]

Define

\[
z=r+\frac{\theta}{2},\qquad s=\frac{\theta^2}{4}.
\]

Then

\[
(r-x)^2+\theta(r-x)
=\left(z-x\right)^2-s.
\]

Hence, on the branch that contains the equilibrium marginal consumer, the consumer-choice problem is identical to a standard quadratic Hotelling model with firms at `0` and `z`, together with a constant quality advantage `s` for the right firm.

This is not a merely verbal analogy; it is an exact algebraic identity.

## 2. Exact match to Cohen & Heifetz (2024) second-stage prices

Cohen and Heifetz (2024), Eqs. (8)-(9), study quadratic Hotelling price competition with locations `l1<l2` and a symmetric quality parameter `v`, so that the quality gap between seller 2 and seller 1 is `2v`.

Set

- `t=1`,
- `l1=0`,
- `l2=z=r+theta/2`,
- `2v=s=theta^2/4`, i.e. `v=theta^2/8`.

Their price formulas become exactly

\[
p_1=\frac{r^2+\theta r+2r+\theta}{3},
\]

\[
p_2=\frac{4r-r^2+2\theta-\theta r}{3},
\]

which are the frozen Stage-8 price formulas (up to the common marginal-cost normalization).

Primary source:

- Cohen, A. and Heifetz, A. (2024), “Location, Location, Quality: The Fixed Differentiation Principle,” *Review of Industrial Organization* 65, 705–720, especially Eqs. (8)-(9): https://link.springer.com/article/10.1007/s11151-024-09989-3

## 3. Exact match of the reversal threshold to the virtual-location threshold

Because `theta` is held fixed when differentiating with respect to `r`, `dz/dr=1` and the induced quality term is constant. Therefore

\[
\frac{\partial p_L^*}{\partial r}
=\frac{2z+2}{3}>0,
\]

\[
\frac{\partial p_R^*}{\partial r}
=\frac{4-2z}{3}.
\]

The frozen reversal condition

\[
\theta>4-2r
\]

is equivalent to

\[
z=r+\frac{\theta}{2}>2.
\]

Thus the claimed directional-friction reversal occurs exactly when the model's **virtual quadratic-Hotelling location** crosses `z=2`.

## 4. Lambertini (1994) already contains the underlying same-displacement price reversal

Lambertini's unconstrained quadratic Hotelling model explicitly allows firms to locate outside the city boundaries, with location variables unrestricted on the real line. His price-subgame formulas (working-paper Eqs. (6)-(7), published as *Economic Notes* 23, 438–446) imply, after setting the left firm at zero and the right firm at location `z`,

\[
p_1^*=\frac{z(z+2)}{3},
\qquad
p_2^*=\frac{z(4-z)}{3}
\]

for transport coefficient one.

Consequently,

\[
\frac{\partial p_1^*}{\partial z}=\frac{2z+2}{3}>0,
\qquad
\frac{\partial p_2^*}{\partial z}=\frac{4-2z}{3}<0
\]

whenever `z>2` (while the interior-demand candidate remains positive for an interval beyond that point).

This is the same one-firm displacement comparative-static sign pattern that the current manuscript claims as its surviving novelty.

Primary source:

- Lambertini, L. (1994), “Equilibrium Locations in the Unconstrained Hotelling Game,” *Economic Notes* 23, 438–446. Public working-paper version: http://amsacta.unibo.it/5202/1/155.pdf . See the model allowing `a,b in R` and price formulas (6)-(7).

## 5. What remains genuinely different

The directional model is not globally identical to Lambertini's unconstrained model because the directional term disappears for consumers to the right of the physical right-hand firm `r`. Therefore cross-kink deviations are different, and the Stage-4R global-equilibrium verification is a real mathematical exercise.

However, this does not rescue the current LSRS contribution claim:

- the equilibrium price formulas on the relevant sharing branch are inherited from a known quadratic-Hotelling/vertical-quality price subgame;
- the headline sign reversal is exactly the known unconstrained-quadratic location derivative evaluated at a virtual location `z>2`;
- the `theta=0`, `r in (0,1)` benchmark makes the reversal appear directional by excluding the standard unconstrained location region where the same reversal already occurs.

The residual potentially new statement would have to be reformulated along the lines that a soft directional cost can **implement inside the physical city a price pattern associated with a virtual location outside the city while preserving global incentive compatibility despite the kink**. That is a materially different novelty claim and has not passed Stage 6 prior-art re-kill. It cannot be silently substituted at Stage 11.

## 6. Routing implication

Current LSRS manuscript: `KILL`.

Earliest required reopening: **Stage 6 novelty re-kill** (and then Stage 7.5/8 if a revised virtual-location contribution survives). If the project instead seeks a new strategic mechanism rather than a reinterpretation/equivalence result, reopen Stage 3 mechanism search.

The Stage-3Q/Stage-4R theorem remains a correct mathematical result; what fails is the previously frozen novelty interpretation.
