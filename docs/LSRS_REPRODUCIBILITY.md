# LSRS Reproducibility Baseline

Canonical theory freeze: `LSRS-THEORY-FREEZE-2026-09-03`
Canonical freeze commit: `00654a2f4617f9de7018d873dbf8d4e93901f0f1`

## Environment

- Python 3
- SymPy 1.14.0 (`requirements.txt`)
- LaTeX distribution with `pdflatex`
- `latexmk`

## Verification

Run:

```bash
make verify
```

This executes the frozen symbolic checks:

- `verification/symbolic/eb_price_reversal.py`
- `verification/symbolic/stage4r_lsrs_verify.py`

The expected Stage 4R terminal line is:

```text
PASS: Stage 4R-LSRS symbolic checks
```

## Manuscript build

Run:

```bash
make paper
```

The command invokes `latexmk` on `paper/main.tex` and should produce `paper/main.pdf`.

Run both verification and manuscript build with:

```bash
make all
```

## Repository roles

- `theory/`: canonical freeze and change-control record
- `model/`: pre-freeze/canonical mathematical derivations
- `verification/symbolic/`: reproducible algebra checks
- `references/`: BibTeX source
- `paper/`: manuscript source
- `reviews/`: stage-gate decisions and referee audits
- `docs/`: build/submission procedures

## Stage 9 rule

The manuscript scaffold may operationalize the frozen model but may not modify any primitive, timing, equilibrium concept, parameter restriction, theorem, benchmark, mechanism, or novelty claim. Any such change requires reopening the affected theory gate.

## Springer / LSRS formatting note

The production source is intentionally content-first. Before final submission, the current LSRS/Springer Nature LaTeX requirements must be rechecked and the same frozen manuscript may be format-converted to the current Springer template if needed. Formatting changes must not alter mathematical content.
