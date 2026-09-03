# Preliminary Theorem Targets — Not Yet Established

Status: hypothesis / proof targets only. None of the statements below may be cited as a result until verified analytically and numerically.

## Target T0 — Piecewise demand representation

For fixed ordered locations `(l,r)` and prices `(p_L,p_R)`, derive a complete partition of consumer space and a globally valid demand representation under

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+.
\]

The partition must explicitly handle changes in the utility difference when the marginal consumer crosses `l` or `r`.

## Target T1 — Global price-equilibrium existence theorem

Characterize the set

\[
\mathcal E(\theta)=\{(l,r): \text{the fixed-location price game admits a pure-strategy Nash equilibrium}\}.
\]

Desired theorem form:

\[
(l,r)\in\mathcal E(\theta)
\iff
\text{a finite system of explicit inequalities in }(l,r,\theta)\text{ holds}.
\]

The theorem must be based on global deviation checks, not only regime-local FOCs.

## Target T2 — Directional deformation of the existence frontier

If `partial E(theta)` is nontrivial, determine whether increasing `theta` moves different parts of the frontier differently. A useful result would show genuine directional asymmetry rather than a uniform rescaling of standard transport costs.

Candidate questions:

- Does the feasible separation required for a pure price equilibrium depend asymmetrically on absolute location?
- Can `E(theta)` change topology?
- Is the effect monotone in `theta`?

## Target T3 — Follower best response under equilibrium-existence constraints

For leader location `a`, characterize the follower's feasible and profitable location set after accounting for the price subgame.

The main object is not merely an interior FOC. It is

\[
BR_B(a;\theta)=\arg\max_{b\in[0,1]} \pi_B(a,b;\theta)
\]

with the equilibrium-existence condition imposed globally.

Potentially interesting result to test:

\[
(a,b^*)\in\partial\mathcal E(\theta)
\]

for a nonempty parameter region, meaning the follower optimally locates on the price-equilibrium existence frontier.

## Target T4 — Equilibrium-Constrained Differentiation Principle

This is only a candidate label. The result would be contribution-grade only if the following are all true:

1. the price-equilibrium existence frontier is economically nontrivial;
2. the frontier binds endogenous location over a nondegenerate parameter region;
3. the resulting location pattern is not an immediate corollary of standard maximum differentiation, fixed differentiation, or existing asymmetric/directional sequential-location models;
4. the result has a clear mechanism that survives modest changes in functional form or timing.

If these conditions fail, do not use this label.

## Target T5 — Sequential SPNE type map

Only after T1–T4:

- solve leader location;
- classify endpoint/interior/leapfrogging or other types if they actually arise;
- derive threshold values in `theta` analytically where possible;
- distinguish a true strategic regime change from a mechanically changing feasible set.

## Target T6 — Policy extension (blocked)

A government choosing friction reduction is not part of the current minimal model. Reopen this target only if T4 or an equally strong new theorem survives Stage 6 novelty re-kill.

A viable policy contribution would need to operate through the surviving strategic mechanism, not merely through a quadratic-cost threshold.
