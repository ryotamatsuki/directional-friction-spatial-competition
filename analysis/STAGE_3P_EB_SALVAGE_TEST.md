# Stage 3P — Economics Bulletin Publication-Floor Salvage Test

Date: 2026-09-03

Status: **PASS AT THE MINIMAL MATHEMATICAL GATE / CONDITIONAL PUBLICATION-FLOOR GO**

This stage deliberately lowers the target from an upper-field standalone theory contribution to the Economics Bulletin publication standard: a short result that is original, correct, and of interest to a specialist. The only candidate tested is Stage-3S Candidate E.

## 1. Minimal model

Consumers are uniform on `[0,1]`, have unit demand, and choose between two firms. The left firm is fixed at location `0`; the right firm is at location `r in (0,1)`. Marginal cost is common and equal to `c`.

Directional transport disutility is

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+,\qquad \theta\ge0.
\]

Thus the left firm imposes no directional surcharge, while consumers to the left of the right firm incur the additional rightward-movement cost `theta(r-x)`.

The stage asks only whether a globally valid price Nash equilibrium can exhibit the sign reversal

\[
\frac{\partial p_L^*}{\partial r}>0,
\qquad
\frac{\partial p_R^*}{\partial r}<0.
\]

No endogenous location, welfare, or policy is included.

## 2. Single-crossing allocation

Let `q=p_R-p_L`. The utility difference between the left and right firms is strictly decreasing in consumer location, so demand is characterized by a unique cutoff whenever both firms are active.

The price difference that makes consumer `x` indifferent is

\[
q(x)=
\begin{cases}
(2r+\theta)x-r^2-\theta r, & 0\le x\le r,\\
2rx-r^2, & r\le x\le1.
\end{cases}
\]

The function is continuous and strictly increasing in `x`. Therefore every unilateral price deviation can be represented as a choice of induced cutoff, with monopoly and zero-demand deviations captured by the boundary cutoffs `x=1` and `x=0`.

## 3. Interior candidate

Define

\[
h=2r+\theta,
\qquad
C=r^2+\theta r.
\]

For a cutoff in `(0,r)`, the price subgame candidate is

\[
p_L^*-c=\frac{C+h}{3}
=\frac{r^2+\theta r+2r+\theta}{3},
\]

\[
p_R^*-c=\frac{2h-C}{3}
=\frac{4r-r^2+2\theta-\theta r}{3},
\]

and

\[
x^*=\frac{C+h}{3h}
=\frac{r^2+\theta r+2r+\theta}{3(2r+\theta)}.
\]

For `r>1/2`, `x^*<r` because

\[
3r(2r+\theta)-(r^2+\theta r+2r+\theta)
=r(5r-2)+\theta(2r-1)>0.
\]

## 4. Global deviation audit

### 4.1 Right firm

Given `p_L^*`, the right firm's profit as a function of the induced cutoff is strictly concave on `[0,r]` and is uniquely maximized at `x^*`.

For `x>=r`, the directional surcharge is inactive at the marginal consumer. The right firm's profit remains a concave quadratic. Because its derivative falls discretely at `r` and the derivative immediately to the left of `r` is already negative whenever `x^*<r`, profit is strictly decreasing throughout `[r,1]`.

Hence `p_R^*` is the right firm's unique global best response whenever `r>1/2`.

### 4.2 Left firm

Given `p_R^*`, the left firm's profit is strictly concave on `[0,r]` and is uniquely maximized at `x^*`.

For `x>=r`, its profit is

\[
\pi_L(x)=x\{p_R^*-c+r^2-2rx\}.
\]

Its derivative at the regime boundary is

\[
\left.\frac{d\pi_L}{dx}\right|_{r+}
=p_R^*-c-3r^2
=-\frac{10r^2+r\theta-4r-2\theta}{3}.
\]

Because the outer-regime profit is strictly concave, a sufficient strict global-best-response condition is

\[
10r^2+r\theta-4r-2\theta>0,
\]

or equivalently

\[
\theta<\overline\theta(r)
\equiv
\frac{2r(5r-2)}{2-r}.
\]

Under this condition, the left firm's profit is already decreasing when the marginal consumer crosses `r`, so no finite cross-regime or market-capture deviation is profitable.

Therefore, for `r>1/2` and `theta<overline theta(r)`, the candidate price pair is a **strict global pure-strategy Nash equilibrium**.

## 5. Price-effect reversal

Along the globally valid equilibrium,

\[
\frac{\partial p_L^*}{\partial r}
=\frac{2r+2+\theta}{3}>0,
\]

while

\[
\frac{\partial p_R^*}{\partial r}
=\frac{4-2r-\theta}{3}.
\]

Hence the right firm's price falls as it moves farther from the left firm whenever

\[
\theta>\underline\theta(r)
\equiv4-2r.
\]

A nonempty parameter interval supporting both global Nash validity and the sign reversal exists if

\[
\underline\theta(r)<\overline\theta(r).
\]

This inequality is equivalent to

\[
2r^2+r-2>0,
\]

so define

\[
\bar r=\frac{\sqrt{17}-1}{4}\approx0.780776.
\]

For every

\[
r\in(\bar r,1)
\]

and

\[
4-2r<\theta<\frac{2r(5r-2)}{2-r},
\]

the price game has a strict global pure-strategy Nash equilibrium satisfying

\[
\boxed{
\frac{\partial p_L^*}{\partial r}>0
\quad\text{and}\quad
\frac{\partial p_R^*}{\partial r}<0
}.
\]

This is an open, non-knife-edge parameter region.

## 6. Exact rational witness

Take

\[
r=\frac45,
\qquad
\theta=\frac52.
\]

Then

\[
x^*=\frac{337}{615}\in(0,4/5),
\]

\[
p_L^*-c=\frac{337}{150},
\qquad
p_R^*-c=\frac{139}{75},
\]

and the left firm's derivative immediately after the regime boundary is strictly negative:

\[
\left.\frac{d\pi_L}{dx}\right|_{r+}=-\frac1{15}<0.
\]

The comparative statics are

\[
\frac{\partial p_L^*}{\partial r}=\frac{61}{30}>0,
\qquad
\frac{\partial p_R^*}{\partial r}=-\frac1{30}<0.
\]

Thus the result is not an algebraic knife edge.

## 7. Nested benchmark

At `theta=0`,

\[
p_L^*-c=\frac{r(r+2)}{3},
\qquad
p_R^*-c=\frac{r(4-r)}{3},
\]

and

\[
\frac{\partial p_L^*}{\partial r}=\frac{2r+2}{3}>0,
\qquad
\frac{\partial p_R^*}{\partial r}=\frac{4-2r}{3}>0.
\]

Hence the asymmetric sign reversal disappears exactly in the standard quadratic-Hotelling benchmark.

## 8. Economic mechanism

Moving the right firm farther right has two effects on its price incentive:

1. **competition-softening effect:** greater spatial separation normally relaxes price competition;
2. **directional-exposure effect:** the move also increases the rightward access burden borne by marginal consumers purchasing from the right firm.

For the left firm, both the ordinary differentiation effect and the directional structure raise its equilibrium price. For the right firm, the directional-exposure channel can dominate, producing the sign reversal.

## 9. Minimal publication-floor verdict

The Stage-3S statement that Candidate E was only a regime-local artifact is overturned by this targeted test. There is a clean open parameter region in which the result survives all unilateral price deviations.

This is still too narrow to revive the RIO/JICT route. It is, however, mathematically strong enough to justify a short-note publication route subject to a final proposition-level literature re-kill.

Canonical Stage-3P verdict:

**CONDITIONAL GO — ECONOMICS BULLETIN SALVAGE ROUTE SURVIVES.**

The one remaining blocker is novelty at the exact proposition level: verify that no existing asymmetric-transport Hotelling paper already states or immediately implies the one-sided price-effect reversal above.
