# Lean formalization

This directory adds a machine-checked Lean 4 / mathlib layer to the frozen theory `DFSC-THEORY-2026-09-04-v1`.

## Current formal coverage

Phase 1 deliberately formalizes algebraic and exact-sign claims that are both important and tractable without rebuilding the entire global-equilibrium proof stack.

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

## What is not yet claimed as Lean-proved

The following remain under the existing exact SymPy / analytical verification authority and must not be described as fully formalized in Lean yet:

- derivation of the square-root operator optimum from the constrained optimization problem;
- symbolic differentiation of `H`, `J`, and the operator-envelope identity;
- global monotonicity over the full continuation interval rather than the exact boundary certificate;
- Sturm/root-isolation counts for all unilateral-deviation stationary points;
- R's binding-floor global-deviation maximum;
- the open-neighborhood continuity step in Proposition T1;
- witness-specific support-band root isolation in Proposition T2;
- power-waiting robustness.

Accordingly, Lean Phase 1 is an additional verification layer, not a replacement for the canonical proofs or the existing symbolic scripts.

## Build

Install Lean via `elan` or use the repository CI, then run:

```bash
lake update
lake exe cache get
lake build DirectionalFriction
```

The toolchain and mathlib revision are pinned in `lean-toolchain` and `lakefile.toml`.

## Recommended Phase 2

The highest-value next formalization target is Proposition T4: prove the unconstrained square-root allocation and `J'(x)=A H(x,M)` directly in mathlib. After that, formalize the exact global witness interval and replace the remaining witness-sign checks one by one. The Sturm/root-isolation layer should be attempted only after those analytic identities are stable.
