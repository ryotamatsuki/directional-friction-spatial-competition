# Project Status

Last updated: 2026-09-03

## Current state

**Stage 3R — Genuine Direction-Dependent Friction Mechanism Restart**

Scientific verdict: `UNRESOLVED / ACTIVE KILL TEST`

The predecessor Economics Bulletin route is closed as a theory baseline. This repository contains a new mechanism search, not a minor revision.

## Candidate primitive

\[
\tau(x,y;\theta)=(x-y)^2+\theta\max\{y-x,0\}.
\]

## Current highest-priority question

Does one-sided directional friction create a nontrivial, directionally asymmetric set of firm locations supporting a global pure-strategy price equilibrium, and does that existence frontier affect sequential endogenous location?

## Hard gates

- [ ] Kill Test 0: global pure price-equilibrium existence for fixed locations
- [ ] Kill Test 1: exact `theta=0` nested benchmark recovery
- [ ] Kill Test 2: analytical comparative statics of `E(theta)`
- [ ] Kill Test 3: sequential-location equilibrium conditional on the price game
- [ ] Kill Test 4: proposition-level prior-art re-kill
- [ ] Stage 4 minimal formal model
- [ ] Stage 5 hardening / symbolic and numerical verification
- [ ] Stage 6 novelty re-kill

## Deferred

- welfare extension
- friction-reduction policy
- journal positioning
- manuscript drafting

These are intentionally blocked until a new strategic result survives the early gates.

## Canonical files

- `workflow/STAGE_03_RESTART_CONTRACT.md`
- `model/primitives.md`
- `analysis/PRICE_EXISTENCE_KILL_TEST.md`
- `literature/PRIOR_ART_KILL_MATRIX.md`
- `reviews/STAGE_11_POST_REJECTION_GATE_2026-09-03.md`

## Archived predecessor

See `archive/eb_rejected/`.
