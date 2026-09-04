# Project Status

Last updated: 2026-09-04

## Current state

**Stage 10U — Section-by-Section Paper Construction**

Scientific/editorial verdict: `FULL DRAFT READY FOR REFEREE GATE`

Theory freeze remains authoritative:

- Freeze ID: `DFSC-THEORY-2026-09-04-v1`
- canonical specification: `model/CANONICAL_THEORY_FREEZE.md`
- canonical specification commit: `9a1d42510e97513828637de75a939ec893d5c928`

Stage 10 has converted the frozen theory into a complete modular manuscript without changing the theory or resurrecting killed novelty claims.

## Working title

**When Retail Demand Moves Transit Supply: Spatial Price Competition with a Fixed Fleet**

Positioning: **transport economics / spatial competition theory**.

Primary target at freeze: **Economics of Transportation**.

## Full manuscript map

- `paper/sections/00_abstract.tex` — abstract
- `paper/sections/01_introduction.tex` — introduction and contribution framing
- `paper/sections/02_model.tex` — model, operator allocation, timing and equilibrium
- `paper/sections/03_equilibrium.tex` — local price game and nested benchmarks
- `paper/sections/04_global_support.tex` — global Nash theorem and slack service-floor support
- `paper/sections/05_welfare.tex` — exact welfare, envelope identity and same-floor second best
- `paper/sections/06_robustness_institutions.tex` — power-waiting robustness and institutional mapping
- `paper/sections/07_related_literature.tex` — closest-literature distinction
- `paper/sections/08_conclusion.tex` — conclusion
- `paper/sections/09_appendix.tex` — proofs and verification dependencies

Master source: `paper/main.tex`.

## Frozen headline results in manuscript

1. **T1 — Global network-mediated strategic asymmetry:** a nonempty open set of global pure price equilibria has `BR_L' < 0 < BR_R'`.
2. **T2 — Slack service obligation:** the minimum service rule can be slack on path yet support the global equilibrium through off-path continuation restrictions.
3. **T3 — Nested interaction:** the sign asymmetry disappears under fixed frequency, no directional background demand, or retail-unresponsive frequency.
4. **T4 — Operator-envelope identity:** the individual waiting-cost difference equals the derivative of minimized aggregate waiting cost on the slack branch.
5. **T5 — Private/social share wedge:** decentralized pricing generally does not minimize real spatial-plus-waiting cost; the witness comparison is made against the same-floor second best.

The witness-specific `q` support band and the numerical `rho` robustness range retain their Stage-8 proof-status qualifiers.

## Reproducible paper outputs

`python scripts/generate_paper_tables.py` generates the manuscript's exact-witness and welfare tables from frozen SymPy formulas.

Primary commands remain:

```bash
make verify
make paper
make all
```

`make paper` now regenerates the manuscript tables before LaTeX compilation.

## Stage-10 CI/build status

GitHub Actions run `33866366966` completed successfully:

- `verify`: **PASS** (`make verify`);
- `paper`: **PASS** (generated tables + complete LaTeX manuscript build).

The bibliography is active and the full manuscript compiles under the CI LaTeX job.

## Novelty discipline retained

The manuscript does not claim novelty for:

- strategic asymmetry as a concept;
- network effects in Hotelling;
- competition intensification/tipping from network effects;
- transit demand-frequency feedback;
- minimum service frequency;
- generic curvature conditions;
- generic equilibrium stabilization.

The contribution is the complete third-party fixed-resource strategic chain surviving Stage 6.

## Theory exclusions remain binding

No endogenous retailer location, subsidy design, retailer-funded transit, congestion, online/delivery, endogenous fleet size, extra consumer heterogeneity, equity weights, endogenous optimal service floor, Umeda--Minami-Kusatsu calibration, or revival of the earlier directional-friction route has entered the manuscript.

## Remaining Stage-11 attack targets

- reduced-form absorption into nonlinear network-effect Hotelling;
- institutional scale of destination demand;
- vehicle-circulation interpretation of directional service allocation;
- exogenous coverage/service-availability rationale for the floor;
- journal-level contribution and exposition economy.

These are hostile-referee questions, not unresolved Stage-10 construction failures.

## Provenance

- theory: `model/CANONICAL_THEORY_FREEZE.md`
- theory manifest: `theory/FREEZE_MANIFEST.yaml`
- reproducibility: `docs/REPRODUCIBILITY.md`, `reproducibility/STAGE9_MANIFEST.yaml`
- verification: `verification/`
- literature: `literature/`
- Stage-10 gate: `reviews/STAGE_10U_PAPER_BUILD_2026-09-04.md`
- manuscript: `paper/`

## Gate status

- [x] Stage 3U mechanism search
- [x] Stage 4U minimal model gate
- [x] Stage 5U mechanism hardening
- [x] Stage 6U proposition-level novelty re-kill
- [x] Stage 7U welfare / generality / institutional validation
- [x] Stage 7.5U full-paper freeze decision
- [x] Stage 8U canonical theory freeze
- [x] Stage 9U reproducibility setup
- [x] Stage 10U paper construction — `FULL DRAFT READY FOR REFEREE GATE`
- [ ] Stage 11 referee gate

## Next action

Proceed to **Stage 11 — Multi-Referee Hostile Review / Referee Gate** against the completed manuscript.
