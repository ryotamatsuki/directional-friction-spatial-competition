# Earlier Directional-Model Skeleton — Superseded / Unverified

This note records the status of the preliminary theorem skeleton discussed before the Stage 3 restart was formalized.

## Earlier proposed structure

The preliminary draft attempted to establish:

1. a three-regime closed-form price equilibrium conditional on locations;
2. closed-form follower location candidates from regime-local first-order conditions;
3. a finite-candidate sequential-location equilibrium characterization;
4. an optimal policy reducing directional friction.

## Why it is not canonical

The price section solved candidate equilibria inside allocation regimes, but did not yet establish that firms had no profitable price deviation that moves the marginal consumer across regime boundaries. Because the one-sided term creates kinks, regime-local self-consistency is not sufficient for a global Nash equilibrium proof.

Consequently:

- the claimed price-Nash propositions are **unverified**;
- follower location FOCs built on those price candidates are **unverified**;
- the SPNE type theorem is **unverified**;
- the policy theorem is **blocked**.

## Reuse rule

Algebra from the earlier skeleton may be used as candidate calculations only after Kill Test 0 independently establishes the globally valid price game. No theorem statement from the earlier skeleton should be copied into a manuscript or theory freeze without re-proof.

## Current canonical route

See:

- `workflow/STAGE_03_RESTART_CONTRACT.md`
- `analysis/PRICE_EXISTENCE_KILL_TEST.md`
- `analysis/PRELIMINARY_THEOREM_TARGETS.md`
