# Lean formalization

This directory adds a machine-checked Lean 4 / mathlib layer to the frozen theory `DFSC-THEORY-2026-09-04-v1`.

## Current formal coverage

### Phase 1 — local algebra, exact witness, and welfare wedge

- `DirectionalFriction/Core.lean`
  - local best-response slope definitions corresponding to paper equations (15)–(16);
  - Lemma 1 sign implications from numerator/SOC signs;
  - the `g' = 0` one-half reaction benchmark.
- `DirectionalFriction/Witness.lean`
  - exact frozen witness values `x*`, `g*`, and `g'*`;
  - exact SOC terms;
  - exact best-response slopes and the strict sign asymmetry `BR_L' < 0 < BR_R'`;
  - exact equilibrium prices and profits;
  - strict positivity of the exact continuation-slope boundary certificate;
  - strict positivity of L's exact boundary-deviation profit gap.
- `DirectionalFriction/Welfare.lean`
  - algebraic derivation of the private/social wedge from the retail FOCs plus shopper indifference;
  - the sign implications in Proposition T5 for `x > 1/2`, `x < 1/2`, and `x = 1/2`.

### Phase 2 — operator optimum and Proposition T4 envelope identity

- `DirectionalFriction/Operator.lean`
  - formulates the normalized fixed-fleet operator problem
    `D_L/s + D_R/(1-s)` with `D_L=M+x` and `D_R=1-x`;
  - proves the exact nonnegative-square decomposition of the objective gap;
  - proves the square-root allocation is strictly interior when both directional demands are positive;
  - proves that allocation attains the global lower bound;
  - proves uniqueness of the interior global minimizer:
    `s_L* = sqrt(M+x)/(sqrt(M+x)+sqrt(1-x))`.
- `DirectionalFriction/Envelope.lean`
  - defines the canonical slack-branch
    `H(x,M)=(1-M-2x)/sqrt((M+x)(1-x))`;
  - differentiates the minimized operator waiting cost in Lean;
  - proves `J'(x)=A H(x,M)` for positive directional demands;
  - proves the optimal-allocation access difference
    `1/s_L* - 1/(1-s_L*) = H(x,M)`;
  - combines the two results into the full Proposition T4 operator-envelope identity.

### Phase 3 — exact global-Nash witness and globally unique continuation

- `DirectionalFriction/GlobalWitness.lean`
  - introduces the algebraic witness field `Q(sqrt(7599))` and the exact service-share candidate;
  - proves the residual-polynomial sign certificates on a service-share interval wider than the physical slack branch.
- `DirectionalFriction/GlobalSlack.lean`
  - replaces the original stationary-point/Sturm route by direct exact factorization of each candidate-profit gap;
  - proves the candidate weakly dominates every slack deviation and strictly dominates every non-candidate physical slack deviation;
  - proves the operator service-share map stays inside the certified interval and is inverted exactly by the shopper-share formula.
- `DirectionalFriction/GlobalFloor.lean`
  - proves L's binding-floor region is dominated by its boundary;
  - completes the square for R's binding-floor problem and proves its exact vertex remains strictly below the candidate profit.
- `DirectionalFriction/Continuation.lean`
  - proves the exact slack continuation slope is bounded below by the positive boundary certificate throughout `x in [0,2/3]`.
- `DirectionalFriction/ContinuationMonotone.lean`
  - differentiates the actual slack shopper-indifference residual;
  - proves the slack residual is strictly increasing, the binding residual has slope two, and the two formulas agree at the floor boundary;
  - proves the full piecewise continuation residual is strictly increasing on `[0,1]` and hence has at most one physical zero for each fixed price difference.
- `DirectionalFriction/GlobalNash.lean`
  - proves the exact candidate service share equals the operator's unconstrained share at `x*=23/40`;
  - assembles slack and floor regions into the full unilateral deviation problem;
  - proves `x*` attains the candidate profit for each retailer and is the unique global maximizer over the physical share interval.

Phase 3 therefore machine-checks the exact-witness core of Proposition T1: globally single-valued continuation, strict local strategic asymmetry/SOCs, and both retailers' unique global best responses. The original Sturm/root-isolation script remains as an independent audit, but is no longer needed as the primary exact-witness proof because the direct profit-gap factorization is stronger.

## What is not yet claimed as Lean-proved

The following remain under the existing analytical / symbolic / numerical verification authority and must not yet be described as fully formalized in Lean:

- the parameterized continuity/open-neighborhood step that upgrades the exact witness to the full nonempty-open-set statement in Proposition T1;
- the witness-specific numerical support-band endpoint isolation in Proposition T2;
- the generic power-waiting allocation/envelope derivation and the local-in-`rho` robustness argument;
- the reported numerical power-waiting survivor interval, which is intentionally an audit rather than an analytic theorem.

Accordingly, the Lean layer now replaces the complete exact-witness global-equilibrium proof stack, but not yet every continuity/robustness statement surrounding that witness.

## Build

Install Lean via `elan` or use the repository CI, then run:

```bash
lake update
lake exe cache get
lake build DirectionalFriction
```

The toolchain and mathlib revision are pinned in `lean-toolchain` and `lakefile.toml`.

## Next formal targets

1. Formalize the open-neighborhood persistence theorem used in Proposition T1 and connect it to the model's parameterized strict inequalities.
2. Formalize the qualitative nonbinding-floor support claim in Proposition T2; retain decimal support-band endpoints as numerical root-isolation output unless exact endpoint formulas are promoted to the theorem.
3. Formalize the power-waiting operator optimum/envelope identity for generic positive `rho`, then separate the analytic local-robustness theorem from the conservative numerical survivor audit.
