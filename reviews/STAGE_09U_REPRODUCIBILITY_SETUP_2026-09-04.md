# Stage 9U — Repository / Reproducibility Setup

Date: 2026-09-04  
Workflow: `research-paper-workflow` v1.1 / `templates/STAGE_09_REPRODUCIBILITY_SETUP.md`

## Executive verdict

# `REPRODUCIBILITY BASELINE READY`

The frozen theory `DFSC-THEORY-2026-09-04-v1` has been operationalized into a reproducible repository baseline. No theoretical primitive, proposition, welfare claim, or literature position changed.

## Starting remote state

- repository: `ryotamatsuki/directional-friction-spatial-competition`
- starting `main`: `b6a0ecaba61c4dc31bc303a319acd7dc6490b87a`
- authoritative Stage-8 branch at Stage-9 start: `stage8u/theory-freeze`
- Stage-8 PR: #23, open at start
- canonical theory specification commit: `9a1d42510e97513828637de75a939ec893d5c928`
- Stage-9 branch: `stage9u/reproducibility-setup`

Stage 9 was branched from Stage 8 rather than stale `main`, so the freeze record and concurrent work are preserved.

## Repository scaffold

Production-facing structure now includes:

```text
paper/
  main.tex
  sections/
  references/
  figures/
  tables/
scripts/
  check_freeze.py
  run_verification.py
docs/
  REPRODUCIBILITY.md
reproducibility/
  STAGE9_MANIFEST.yaml
verification/
  symbolic/
  numerical/
.github/workflows/
  reproducibility.yml
Makefile
requirements.txt
```

Existing `model/`, `theory/`, `analysis/`, `literature/`, `reviews/`, and `archive/` records remain in place.

## Build system

Primary commands:

```bash
make verify
make paper
make all
```

`make verify` first checks freeze integrity and then runs the frozen symbolic/numerical suite. `make paper` builds the modular LaTeX scaffold with `latexmk`. `make all` runs both.

## Reference environment

Local-equivalent validation was executed with:

- Python 3.13.5
- SymPy 1.14.0
- NumPy 2.3.5
- SciPy 1.17.0
- latexmk 4.86
- pdfTeX / pdfLaTeX from TeX Live 2025 development packaging

Python packages are pinned in `requirements.txt`.

## Verification mapping

### Symbolic

1. `verification/symbolic/stage3u_frequency_feedback_preflight.py`
   - operator waiting-cost difference identity;
   - benchmark markup;
   - background-demand comparative statics;
   - local strategic-asymmetry preflight.

2. `verification/symbolic/stage5u_minimum_service_floor.py`
   - exact hardened witness;
   - floor slackness;
   - exact prices/profits;
   - SOCs and opposite reaction signs;
   - continuation monotonicity;
   - exact global deviation comparisons.

3. `verification/symbolic/stage7u_welfare_generality.py`
   - operator-envelope identity;
   - private/social wedge;
   - same-floor second best;
   - power-waiting envelope identities;
   - witness-specific support-band roots.

### Numerical

4. `verification/numerical/stage5u_neighborhood_audit.py`
   - deterministic audit reproducing `595` local strategic-asymmetry candidates and `444` global-equilibrium survivors.

5. `verification/numerical/stage7u_power_waiting_robustness.py`
   - deterministic rho audit;
   - confirms the conservative reported witness range `[0.95,1.01]`.

The Stage-4 global-deviation failure script remains historical provenance but is not needed to reproduce the frozen positive theorem package.

## Stage-9 CAS compatibility repair

A real reproducibility issue was detected: under SymPy 1.14.0, the original Stage-7 script did not reliably normalize two mathematically exact radical/power identities to literal zero.

The repair was implementation-only:

1. the minimized square-root waiting-cost expression was rewritten to the algebraically equivalent domain form
   `M + 1 + 2*sqrt((M+x)(1-x))` before differentiation;
2. the general power-waiting envelope identities now use direct `simplify` under positive-variable assumptions rather than `powdenest(force=True)`.

After the repair, all exact reported Stage-7 values are unchanged:

- `x_SB ≈ 0.7023780018535646`;
- real-cost gain `≈ 0.011378172029563562`;
- `q_L ≈ 0.32409122877989893`;
- `q_U ≈ 0.3442281393804723`.

This does not trigger theory change control because no equation/result changed.

## Local-equivalent validation

The following all passed locally:

- Stage 3U symbolic preflight;
- Stage 5U symbolic hardening;
- Stage 7U symbolic welfare/generality after CAS repair;
- Stage 5U numerical neighborhood audit (`595`, `444`);
- Stage 7U numerical power-waiting audit;
- LaTeX scaffold clean build with `latexmk -pdf -interaction=nonstopmode -halt-on-error`.

The bibliography file is managed now but is deliberately not invoked by the Stage-9 placeholder manuscript. Verified bibliography population and citations belong to Stage 10.

## CI

`.github/workflows/reproducibility.yml` contains two PR/push jobs:

- Python frozen verification using Python 3.13 and pinned dependencies;
- LaTeX scaffold build.

On PR #24, the GitHub `verify` job completed successfully, including `make verify`. The `paper` job had started and remained in progress at the final Stage-9 check. The identical LaTeX scaffold already passed the documented local-equivalent build, so no reproducibility blocker remains if the hosted LaTeX job is delayed by runner/action startup.

## Generated-object policy

- `build/verification.log` is generated by the runner and not committed;
- LaTeX auxiliary/PDF outputs are ignored;
- manuscript figures and numerical tables must be generated into the designated `paper/figures/` and `paper/tables/` locations when added;
- no hand-edited reported numerical result is permitted when generation is feasible.

## Provenance locations

- theory: `model/CANONICAL_THEORY_FREEZE.md`
- theory manifest: `theory/FREEZE_MANIFEST.yaml`
- reproducibility manifest: `reproducibility/STAGE9_MANIFEST.yaml`
- workflow/gate records: `reviews/`
- prior-art evidence: `literature/`
- code: `verification/` and `scripts/`
- manuscript source: `paper/`

## Remaining blockers

No reproducibility blocker remains for Stage 10 section writing.

The only external operational dependency is completion of the hosted LaTeX CI job; the same build has already passed locally.

## Stage 10 writing contract

Stage 10 may now construct the manuscript only against:

- Freeze ID `DFSC-THEORY-2026-09-04-v1`;
- `model/CANONICAL_THEORY_FREEZE.md`;
- the proposition/proof-status register frozen at Stage 8;
- the verification scripts mapped above;
- the literature claims that survived Stage 6;
- the institutional/welfare limits frozen at Stage 7–8.

Stage 10 may reorganize exposition, notation presentation, appendix placement, and proof presentation. It may not add a strategic variable, new theorem, new welfare claim, new policy instrument, or resurrect a killed novelty claim.

## Final verdict

# `REPRODUCIBILITY BASELINE READY`

Route: **GO TO STAGE 10 — PAPER CONSTRUCTION**.
