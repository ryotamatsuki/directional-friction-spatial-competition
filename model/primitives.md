# Candidate Model Primitives

Status: exploratory; not theory-frozen.

## Space and consumers

Consumers are distributed on `[0,1]`, initially uniformly. A consumer at `x` has unit demand and receives sufficiently large gross utility `v` from consumption.

## Firms

Two firms choose locations and later prices. For a given ordered pair of locations, denote the left firm by `L` at `l` and the right firm by `R` at `r`, with

\[
0\le l<r\le 1.
\]

Marginal production cost is initially normalized to a common constant `c`.

## Genuine directional transport friction

The candidate transport disutility from consumer `x` to a firm at `y` is

\[
\tau(x,y;\theta)=(x-y)^2+\theta\max\{y-x,0\},\qquad \theta\ge0.
\]

Interpretation:

- the quadratic term is symmetric distance disutility;
- the extra linear term applies only when the consumer moves rightward (`y>x`);
- the extra term is zero for leftward movement (`y<=x`).

This is intentionally different from the rejected Economics Bulletin primitive, where the extra wedge was attached to buying from one firm regardless of direction.

## Utility

\[
u_i(x)=v-p_i-\tau(x,y_i;\theta).
\]

## Candidate timing

The preferred theory sequence is currently:

1. leader chooses location `a`;
2. follower chooses location `b`;
3. firms choose prices simultaneously.

A government friction-reduction stage is deferred until the location mechanism survives novelty and robustness gates.

## Essential technical warning

Because `max{y-x,0}` creates kinks, the indifferent consumer can lie in different regions relative to firm locations. A price candidate derived from a local regime cannot be called a Nash equilibrium until deviations that move the indifferent consumer across regime boundaries have been checked globally.

## Nested benchmark

At `theta=0`, the model must reduce exactly to the standard quadratic-distance Hotelling benchmark used for comparison. This is a mandatory diagnostic, not a robustness extension.

## Objects to characterize

- piecewise consumer allocation;
- candidate regime-specific price equilibria;
- global pure-strategy price-equilibrium existence set `E(theta)`;
- boundary of `E(theta)`;
- follower location best response conditional on existence;
- leader location choice;
- limiting behavior as `theta -> 0` and as directional friction becomes large.
