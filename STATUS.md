# Project Status

Last updated: 2026-09-04

## Current state

**Stage 9U — Repository / Reproducibility Setup**

Scientific/engineering verdict: `REPRODUCIBILITY BASELINE READY`

Theory freeze remains authoritative:

- Freeze ID: `DFSC-THEORY-2026-09-04-v1`
- canonical specification: `model/CANONICAL_THEORY_FREEZE.md`
- canonical specification commit: `9a1d42510e97513828637de75a939ec893d5c928`

No Stage-9 implementation change altered the frozen theory.

## Reproducibility baseline

Reference environment validated locally:

- Python 3.13.5
- SymPy 1.14.0
- NumPy 2.3.5
- SciPy 1.17.0
- latexmk / pdfLaTeX

Pinned Python requirements: `requirements.txt`.

Primary commands:

```bash
make verify
make paper
make all
```

`make verify` checks freeze integrity and runs the frozen symbolic/numerical verification suite. `make paper` cleanly builds the Stage-10 LaTeX scaffold.

## Verified frozen result map

- `verification/symbolic/stage3u_frequency_feedback_preflight.py`
  - nested benchmark/preflight identities;
- `verification/symbolic/stage5u_minimum_service_floor.py`
  - exact hardened global-Nash witness, prices/profits, SOCs, reaction signs and global-deviation gaps;
- `verification/numerical/stage5u_neighborhood_audit.py`
  - `595` local candidates / `444` global survivors;
- `verification/symbolic/stage7u_welfare_generality.py`
  - operator-envelope identity, private/social wedge, same-floor second best and support-band roots;
- `verification/numerical/stage7u_power_waiting_robustness.py`
  - conservative numerical rho robustness.

Local-equivalent gate: **PASS**.

## Stage-9 CAS compatibility repair

The original Stage-7 symbolic script depended on SymPy radical/power normalization behavior. Under SymPy 1.14.0 two exact identities did not reduce to literal zero with the original normalization calls.

Stage 9 rewrote only those assertions into algebraically equivalent exact forms. The theoretical equations and all reported numerical values are unchanged. This is implementation hardening, not theory change.

## Manuscript scaffold

`paper/` now contains a modular LaTeX build baseline:

- `paper/main.tex`
- `paper/sections/`
- `paper/references/references.bib`
- `paper/figures/`
- `paper/tables/`

The placeholder manuscript builds cleanly with `latexmk`. Bibliography entries/citations will be populated in Stage 10 from verified literature records.

## CI

`.github/workflows/reproducibility.yml` defines:

- Python verification on PR/push;
- LaTeX manuscript build on PR/push.

CI execution is platform-dependent; successful local-equivalent gates are already documented in `reviews/STAGE_09U_REPRODUCIBILITY_SETUP_2026-09-04.md`.

## Frozen paper core remains unchanged

Working title: **When Retail Demand Moves Transit Supply: Spatial Price Competition with a Fixed Fleet**.

Positioning: **transport economics / spatial competition theory**.

Primary target at freeze: **Economics of Transportation**.

Frozen headline results remain T1–T5 from Stage 8, including the global pure price equilibrium with `BR_L' < 0 < BR_R'`, slack service-floor support, nested benchmark identification, operator-envelope welfare identity, and private/social share wedge.

## Theory exclusions remain binding

No endogenous retailer location, subsidies, retailer-funded transit, congestion, online/delivery, endogenous fleet size, extra heterogeneity, equity weights, endogenous floor choice, Umeda–Minami-Kusatsu calibration, or revival of earlier directional-friction routes may enter Stage 10 without formal theory change control.

## Provenance

- theory: `model/CANONICAL_THEORY_FREEZE.md`
- theory manifest: `theory/FREEZE_MANIFEST.yaml`
- reproducibility instructions: `docs/REPRODUCIBILITY.md`
- reproducibility manifest: `reproducibility/STAGE9_MANIFEST.yaml`
- verification: `verification/`
- gate records: `reviews/`
- manuscript source: `paper/`

## Gate status

- [x] Stage 3U mechanism search
- [x] Stage 4U minimal model gate
- [x] Stage 5U mechanism hardening
- [x] Stage 6U proposition-level novelty re-kill
- [x] Stage 7U welfare / generality / institutional validation
- [x] Stage 7.5U full-paper freeze decision
- [x] Stage 8U canonical theory freeze
- [x] Stage 9U reproducibility setup — `REPRODUCIBILITY BASELINE READY`
- [ ] Stage 10 paper construction
- [ ] Stage 11 referee gate

## Next action

Proceed to **Stage 10 — Paper Construction** against the frozen theory and Stage-9 infrastructure only.
