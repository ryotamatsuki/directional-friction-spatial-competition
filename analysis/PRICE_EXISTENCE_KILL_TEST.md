# Kill Test 0 — Global Price-Equilibrium Existence

Status: OPEN

This is the first mathematical gate for the restarted project.

## Object

For ordered locations `0 <= l < r <= 1`, define

\[
\mathcal E(\theta)=\{(l,r): \text{the price subgame under directional friction }\theta\text{ has a pure-strategy Nash equilibrium}\}.
\]

Candidate transport disutility:

\[
\tau(x,y;\theta)=(x-y)^2+\theta\max\{y-x,0\}.
\]

## Why this gate comes first

The directional term introduces kinks when a marginal consumer crosses a firm location. Solving the first-order conditions inside one allocation regime is therefore insufficient: a firm may profitably deviate far enough in price to move the marginal consumer into another regime.

The paper cannot proceed to endogenous location until global price deviations are controlled.

## Required derivation

For each `(l,r,theta)`:

1. derive utility difference `Delta(x)=u_L(x)-u_R(x)` piecewise;
2. identify every possible allocation regime;
3. derive the indifferent consumer when it exists;
4. derive firm profits as globally piecewise functions of `(p_L,p_R)`;
5. solve all regime-local stationary candidates;
6. check second-order conditions where differentiable;
7. check deviations to regime boundaries;
8. check deviations that jump across one or more regime boundaries;
9. check monopoly/zero-demand corners and price ties;
10. classify whether a global pure-strategy Nash equilibrium exists.

## Mandatory benchmark

At `theta=0`, recover the standard quadratic-distance benchmark exactly. Failure to recover it is a hard mathematical stop.

## Candidate outputs

The strongest useful result would be an analytical characterization such as

\[
(l,r)\in\mathcal E(\theta)
\iff
F(l,r,\theta)\ge0,
\]

or a finite set of inequalities defining `E(theta)`.

A second-best result is a rigorous sufficient/necessary condition pair with the unresolved region explicitly bounded.

Purely numerical existence maps do not pass Stage 4.

## Comparative-statics questions

Once `E(theta)` is characterized:

- Is `E(theta_2)` nested in `E(theta_1)` for `theta_2>theta_1`?
- Does the boundary move asymmetrically in `l` and `r`?
- Are there directional-friction thresholds at which topology changes?
- Does `theta -> 0` converge continuously to the benchmark existence set?
- What happens for large `theta`?

## Kill criteria

Kill the current mechanism route if:

- global price equilibrium fails generically and the nonexistence has no novel implication for location;
- the existence set is a trivial restatement of an existing nonlinear-transport theorem;
- directionality changes notation but not the economic existence condition;
- the result depends only on an arbitrary kink without a defensible economic interpretation.

## Verification contract

Any analytical existence theorem must later be checked by symbolic derivation and dense numerical deviation search over admissible prices and locations. Numerical checks validate algebra and boundaries; they do not substitute for proof.
