# Stage 3P — Minimal Economics Bulletin Note Architecture

Date: 2026-09-03

Working title:

**Directional Friction and the Price Effect of Spatial Differentiation**

Alternative:

**When More Spatial Differentiation Lowers One Firm's Price**

## Minimal game

- Consumers: uniform on `[0,1]`, unit demand.
- Firm L: fixed at `0`.
- Firm R: fixed at `r in (0,1)`.
- Common marginal cost: `c`.
- Simultaneous mill prices.
- Directional transport disutility:

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+.
\]

No location stage, policy stage, welfare section, or equilibrium-existence-frontier contribution.

## Main proposition

Let

\[
\bar r=(\sqrt{17}-1)/4.
\]

For

\[
r\in(\bar r,1)
\]

and

\[
4-2r<\theta<\frac{2r(5r-2)}{2-r},
\]

the price game admits a strict global pure-strategy Nash equilibrium with an indifferent consumer strictly between the firms. The equilibrium prices are

\[
p_L^*-c=\frac{r^2+\theta r+2r+\theta}{3},
\]

\[
p_R^*-c=\frac{4r-r^2+2\theta-\theta r}{3}.
\]

Moreover,

\[
\frac{\partial p_L^*}{\partial r}>0,
\qquad
\frac{\partial p_R^*}{\partial r}<0.
\]

Thus moving the right-hand product farther from its rival can lower its own equilibrium price even though the rival's equilibrium price rises.

## Benchmark

At `theta=0`, both price derivatives with respect to `r` are positive, recovering the standard quadratic-Hotelling price-softening intuition.

## Mechanism language

Do not call the result a new general differentiation principle.

Use the narrower mechanism:

> Greater separation has the standard competition-softening effect, but for the right-hand firm it also increases exposure of marginal consumers to the one-sided access friction. When the latter effect dominates, the firm's equilibrium price falls with greater separation.

## Intended contribution level

Short theoretical note. The result is not positioned as RIO/JICT-level standalone theory. The intended publication floor is Economics Bulletin or a comparable short-note outlet, conditional on final proposition-level novelty re-kill.
