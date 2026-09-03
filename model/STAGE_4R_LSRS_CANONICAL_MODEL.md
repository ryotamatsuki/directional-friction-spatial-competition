# Stage 4R-LSRS — Canonical Minimal Price Model

Date: 2026-09-03
Target: Letters in Spatial and Resource Sciences
Base: `stage3q/eb-proposition-novelty-rekill`

## Scope

This stage does not modify the Stage 3Q scientific object. It formalizes the frozen fixed-location price game for manuscript construction.

Consumers are uniformly distributed on `[0,1]`, each demands exactly one unit, and must choose one of the two firms. There is no outside option in the canonical covered-market formulation; hence the common gross valuation can be normalized away and no lower bound on `v` is required.

Firm L is located at `0`; firm R is located at `r in (0,1)`. Both have common marginal cost `c` and choose uniform mill prices simultaneously.

Directional travel/access disutility is

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+,\qquad \theta\ge0.
\]

Thus the extra directional term applies only when the destination lies to the right of the consumer.

## Allocation

Let `q=p_R-p_L`. The utility difference `u_L-u_R` is

\[
\Delta(x)=
\begin{cases}
q+r^2+\theta r-(2r+\theta)x, & 0\le x\le r,\\
q+r^2-2rx, & r\le x\le1.
\end{cases}
\]

It is continuous and strictly decreasing. Therefore allocation is single crossing. The price difference inducing cutoff `x` is

\[
q(x)=
\begin{cases}
(2r+\theta)x-r^2-\theta r, & 0\le x\le r,\\
2rx-r^2, & r\le x\le1.
\end{cases}
\]

Every unilateral price deviation is representable by an induced cutoff, with `x=0` and `x=1` covering zero demand and full market capture.

## Interior candidate

Define

\[
h=2r+\theta,\qquad C=r^2+\theta r.
\]

For a cutoff in `(0,r)`, simultaneous pricing yields

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
x^*=\frac{C+h}{3h}.
\]

For `r>1/2`, `x^*<r` because

\[
3rh-(C+h)=r(5r-2)+\theta(2r-1)>0.
\]

Both equilibrium price margins are strictly positive for `r in (0,1)`, `theta>=0`.

## Global-deviation condition

Within each cutoff regime, each firm's deviation profit is a strictly concave quadratic.

For firm R, once `x^*<r`, profit is decreasing when the cutoff reaches `r`, and the derivative falls by `theta(1-r)` at the kink. Thus no deviation with cutoff in `[r,1]`, including full-market capture, beats `x^*`.

For firm L, the derivative immediately to the right of the kink is

\[
\left.\frac{d\pi_L}{dx}\right|_{r+}
=-\frac{10r^2+r\theta-4r-2\theta}{3}.
\]

Hence the strict sufficient condition

\[
10r^2+r\theta-4r-2\theta>0
\]

or

\[
\theta<\overline\theta(r)=\frac{2r(5r-2)}{2-r}
\]

makes the outer-regime profit strictly decreasing from `r` onward. Since the middle-regime profit has the unique maximizer `x^*<r`, no cross-regime, zero-demand, or market-capture deviation is profitable.

Therefore, for `r>1/2` and `theta<overline theta(r)`, the displayed price pair is a strict global pure-strategy Nash equilibrium.

This is a sufficient global-equilibrium region. This stage does **not** claim uniqueness of the Nash equilibrium across every possible price regime.

## Price-effect reversal

\[
\frac{\partial p_L^*}{\partial r}=\frac{2r+2+\theta}{3}>0,
\]

\[
\frac{\partial p_R^*}{\partial r}=\frac{4-2r-\theta}{3}.
\]

The right firm's own price falls with greater separation iff

\[
\theta>4-2r.
\]

The reversal condition and strict global-equilibrium sufficient condition overlap iff

\[
4-2r<\frac{2r(5r-2)}{2-r},
\]

which is equivalent to

\[
2r^2+r-2>0.
\]

Let

\[
\bar r=\frac{\sqrt{17}-1}{4}.
\]

Then for

\[
r\in(\bar r,1),\qquad
4-2r<\theta<\frac{2r(5r-2)}{2-r},
\]

the strict global price equilibrium satisfies

\[
\boxed{\frac{\partial p_L^*}{\partial r}>0,\qquad
\frac{\partial p_R^*}{\partial r}<0.}
\]

## Standard benchmark

At `theta=0`,

\[
p_L^*-c=\frac{r(r+2)}3,\qquad
p_R^*-c=\frac{r(4-r)}3,
\]

with both derivatives with respect to `r` positive for `r in (0,1)`.

## Exact witness

At `r=4/5`, `theta=5/2`,

\[
x^*=337/615,\quad
p_L^*-c=337/150,\quad
p_R^*-c=139/75,
\]

\[
\frac{\partial p_L^*}{\partial r}=61/30>0,\qquad
\frac{\partial p_R^*}{\partial r}=-1/30<0,
\]

and

\[
\left.\frac{d\pi_L}{dx}\right|_{r+}=-1/15<0.
\]

## Frozen interpretation

Greater separation has the usual competition-softening effect, but it also raises the one-sided access burden faced by marginal consumers buying from the right firm. For the directionally exposed firm, this directional-exposure channel can dominate the ordinary competition-softening channel, lowering its equilibrium price while the rival's price still rises.
