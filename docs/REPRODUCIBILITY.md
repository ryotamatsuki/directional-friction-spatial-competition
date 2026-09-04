# Reproducibility baseline

Freeze ID: `DFSC-THEORY-2026-09-04-v1`

## Reference environment

Stage 9 local-equivalent validation used:

- Python 3.13.5
- SymPy 1.14.0
- NumPy 2.3.5
- SciPy 1.17.0
- latexmk / pdfLaTeX

Install Python dependencies with:

```bash
python -m pip install -r requirements.txt
```

## One-command validation

```bash
make all
```

This runs the freeze-integrity check, all frozen symbolic/numerical verification, and the Stage 10 manuscript scaffold build.

## Verification map

| Frozen result | Reproduction source |
|---|---|
| Nested benchmark identities / preflight comparative statics | `verification/symbolic/stage3u_frequency_feedback_preflight.py` |
| Global hardened witness, exact prices/profits, BR signs, global deviation gaps | `verification/symbolic/stage5u_minimum_service_floor.py` |
| 595 local candidates / 444 global survivors | `verification/numerical/stage5u_neighborhood_audit.py` |
| Envelope identity, private/social wedge, same-floor second best, support-band roots | `verification/symbolic/stage7u_welfare_generality.py` |
| Power waiting-cost robustness audit | `verification/numerical/stage7u_power_waiting_robustness.py` |

The Stage 4 negative result remains historical evidence and is not part of the frozen positive theorem package.

## Expected terminal markers

- `Freeze integrity: PASS (DFSC-THEORY-2026-09-04-v1)`
- `Stage 3U symbolic preflight: PASS`
- `Stage 5U symbolic hardening: PASS`
- `Stage 7U welfare/generality symbolic verification: PASS`
- `Stage 5U neighborhood audit: PASS`, with `595` local candidates and `444` global survivors
- `conservative rho robustness [0.95,1.01]: PASS`

Any nonzero exit is a reproducibility failure.

## CAS normalization repair

Stage 9 found that the Stage 7 welfare script depended on SymPy radical branch normalization. Two assertions were rewritten into algebraically equivalent exact forms that pass under SymPy 1.14.0. No theoretical equation, parameter, or reported value changed.

## Manuscript build

`make paper` runs:

```bash
cd paper && latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

The Stage 9 scaffold deliberately does not invoke BibTeX; `paper/references/references.bib` is the managed bibliography source and will be populated/activated in Stage 10 from verified literature records.

## Provenance

- Canonical theory: `model/CANONICAL_THEORY_FREEZE.md`
- Freeze manifest: `theory/FREEZE_MANIFEST.yaml`
- Gate reports: `reviews/`
- Literature audit: `literature/`
- Verification: `verification/`
- Stage 9 reproducibility manifest: `reproducibility/STAGE9_MANIFEST.yaml`
- Generated local transcript: `build/verification.log` (not committed)

## Change control

Stage 9 may change tooling only. Any change to equations, proposition conditions, welfare claims, or contribution scope must follow the Stage 8 theory change-control rule and reopen the affected earlier gate.
