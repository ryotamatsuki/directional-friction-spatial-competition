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

Phase 2 therefore upgrades T4 from symbolic recomputation to a machine-checked derivation from the underlying operator optimization problem.

## What is not yet claimed as Lean-proved

The following remain under the existing exact SymPy / analytical verification authority and must not be described as fully formalized in Lean yet:

- global monotonicity over the full continuation interval rather than the exact boundary certificate;
- Sturm/root-isolation counts for all unilateral-deviation stationary points;
- R's binding-floor global-deviation maximum;
- the open-neighborhood continuity step in Proposition T1;
- witness-specific support-band root isolation in Proposition T2;
- power-waiting robustness.

Accordingly, the Lean layer is an additional verification authority for the listed claims, not yet a replacement for the complete canonical global-equilibrium proof stack.

## Build

Install Lean via `elan` or use the repository CI, then run:

```bash
lake update
lake exe cache get
lake build DirectionalFriction
```

The toolchain and mathlib revision are pinned in `lean-toolchain` and `lakefile.toml`.

## Recommended Phase 3

The highest-value next target is Proposition T1's exact global witness. Formalize the slack-branch continuation interval and monotonicity first, then migrate the unilateral-deviation stationary-point/root-isolation certificates. The binding-floor R deviation and open-neighborhood continuity step should follow only after the witness-specific global inequalities are stable.
