# Lean formalization

This directory adds a machine-checked Lean 4 / mathlib layer to the frozen theory `DFSC-THEORY-2026-09-04-v1`.

The formal layer is verification-only. It mirrors the frozen mathematics and does not enlarge the paper's claims. Exact analytic theorems, generic continuity lemmas, and numerical audit intervals are kept explicitly separate below.

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
  - strict positivity of L's exact boundary-deviation profit gap;
  - the exact positive equilibrium-share Jacobian certificate
    `3 g* + (2 x* - 1) g'* > 0`, used as the nondegeneracy input to the surrounding continuity argument.
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
  - defines the canonical slack branch
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
  - proves `x*` attains the candidate profit for each retailer and is the unique global maximizer over the physical shopper-share interval.

Phase 3 therefore machine-checks the exact-witness core of Proposition T1: globally single-valued continuation, strict local strategic asymmetry/SOCs, and both retailers' unique global best responses in the piecewise shopper-share deviation representation. The original Sturm/root-isolation script remains as an independent regression audit, but is no longer needed as the primary exact-witness proof because the direct profit-gap factorization is stronger.

### Phase 4 — service-floor support, open-neighborhood infrastructure, and power waiting

- `DirectionalFriction/SupportBand.lean`
  - proves the exact analytic inner support band
    `33/100 <= q <= 17/50` (`0.33 <= q <= 0.34`);
  - throughout that interval, proves the candidate service share remains strictly above the lower floor and below the upper floor;
  - proves the frozen candidate profits are attained at `x*` and neither retailer has a profitable global deviation over the physical shopper-share interval.
- `DirectionalFriction/RobustnessTopology.lean`
  - upgrades the closed support band to a genuine open `q`-neighborhood `(0.33,0.34)` containing `q=1/3` on which the frozen candidate remains globally supported;
  - proves a generic topological persistence theorem: any finite collection of strict scalar certificates remains valid on an open parameter neighborhood when the corresponding certificate maps are continuous.
- `DirectionalFriction/PowerWaiting.lean`
  - treats the generic technology `a(f)=w f^{-rho}` for every `rho>0` and positive directional demands;
  - proves the closed-form allocation share is strictly interior;
  - proves the exact first derivative of normalized aggregate waiting cost and the derivative of its marginal condition;
  - proves positive curvature, strict monotonicity of the marginal condition, and strict convexity of the operator objective on `(0,1)`;
  - proves the closed-form share satisfies the operator FOC and is the unique interior global minimizer.

## Deliberate formalization boundary

The following statements remain under the analytical / symbolic / numerical verification authority and must **not** be described as fully Lean-proved:

- the complete multidimensional parameterized application that upgrades the exact T1 witness to the paper's full nonempty-open-set statement. Lean now contains the exact witness, the positive equilibrium-share Jacobian, a genuine open `q` slice, and the generic strict-certificate persistence theorem, but it does not instantiate the entire model-specific implicit-equilibrium/global-deviation continuation over every primitive simultaneously;
- the reported witness-specific numerical service-floor endpoints (approximately `0.324091` and `0.344228`). Lean proves the conservative analytic inner band `[0.33,0.34]`; the wider decimal endpoints remain root-isolation output rather than analytic thresholds;
- for generic power waiting, the manuscript's closed-form minimized-cost expression and generic envelope derivative are not rederived in this module. The operator allocation itself, its calculus, strict convexity, and unique optimum are Lean-proved;
- the model-specific statement that the entire retail equilibrium and opposite reaction signs survive for nearby `rho`, and the reported conservative numerical audit `0.95 <= rho <= 1.01`, remain continuity/numerical robustness evidence. That interval is intentionally **not** promoted to a Lean-proved analytic threshold.

Accordingly, the Lean layer now covers the frozen exact global-equilibrium witness, exact global deviations and continuation uniqueness, a rigorous inner service-floor support neighborhood, the core topology used for strict-certificate persistence, and the generic positive-`rho` operator optimum. Numerical robustness bands retain their original status as independent audits.

## Build

Install Lean via `elan` or use the repository CI, then run:

```bash
lake update
lake exe cache get
lake build DirectionalFriction
```

The toolchain and mathlib revision are pinned in `lean-toolchain` and `lakefile.toml`.

The GitHub Actions Lean gate builds the root `DirectionalFriction` target, so every module listed above is compiled together.

## Formalization status

The planned Lean migration for the frozen manuscript is complete at the stated verification boundary. Further work would be optional strengthening rather than a prerequisite for using the current Lean layer: for example, a full parameterized implicit-function development for T1, exact algebraic isolation of the wider numerical `q` endpoints, or a generic-`rho` minimized-cost/envelope derivation.
