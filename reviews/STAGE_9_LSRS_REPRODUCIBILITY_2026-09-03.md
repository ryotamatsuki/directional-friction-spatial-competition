# Stage 9-LSRS — Repository / Reproducibility Setup

Date: 2026-09-03
Target: Letters in Spatial and Resource Sciences
Theory freeze: `LSRS-THEORY-FREEZE-2026-09-03`
Canonical freeze commit: `00654a2f4617f9de7018d873dbf8d4e93901f0f1`

## Executive verdict

**REPRODUCIBILITY BASELINE READY.**

The repository now has a content-first LaTeX manuscript scaffold, BibTeX source, pinned symbolic dependency, one-command verification/build targets, and documented provenance. The frozen mathematical checks pass under SymPy 1.14 after replacing brittle expression-tree equalities with algebraic identity checks. A local-equivalent LaTeX build produced a valid PDF and visual render.

## Starting remote state

At LSRS route start:

- repository default branch: `main`;
- main HEAD: `b6a0ecaba61c4dc31bc303a319acd7dc6490b87a`;
- Stage 3Q scientific base HEAD: `f887d288d87f97ebee4ce6a8ab5d7973079d2d3d`;
- Stage 3T remained a separate NO-GO negative branch;
- Stage 8 canonical freeze commit: `00654a2f4617f9de7018d873dbf8d4e93901f0f1`.

No historical reset or overwrite of concurrent work was performed.

## Repository production structure

Added/normalized:

```text
paper/
  main.tex
  sections/
    model.tex
    equilibrium.tex
    main_result.tex
    literature.tex
    introduction.tex
    conclusion.tex
references/
  references.bib
verification/
  symbolic/
    eb_price_reversal.py
    stage4r_lsrs_verify.py
requirements.txt
Makefile
docs/
  LSRS_REPRODUCIBILITY.md
```

The pre-existing `analysis/`, `archive/`, `model/`, `reviews/`, `theory/`, and `workflow/` records remain intact.

## Build system

`Makefile` targets:

- `make verify` — run both symbolic verification scripts;
- `make paper` — build `paper/main.tex` with `latexmk`/`pdflatex`;
- `make all` — verification plus manuscript build;
- `make clean` — clean LaTeX intermediates.

The current manuscript scaffold is intentionally journal-content-first. Final Springer/LSRS template conversion, if required by the submission system, is a formatting operation and must not alter frozen theory.

## Symbolic verification repair

The inherited `eb_price_reversal.py` used raw Python/SymPy expression-tree equality for several algebraically identical SOC expressions. Under SymPy 1.14, for example,

`-2*(2*r+theta)` and `-4*r-2*theta`

are mathematically identical but need not compare as structurally identical expressions.

Stage 9 replaced such checks with the canonical workflow form

```python
sp.simplify(lhs-rhs) == 0
```

in both symbolic scripts where needed. No formula, parameter restriction, theorem statement, or economic conclusion changed.

Local-equivalent symbolic output:

```text
PASS: Stage 3P EB price-reversal symbolic checks
PASS: Stage 4R-LSRS symbolic checks
```

## LaTeX build validation

Local-equivalent environment:

- `pdflatex`: available;
- `latexmk`: available;
- TeX Live 2025/dev;
- SymPy 1.14.0.

The scaffold compiled to PDF. Visual rendering at 150 dpi showed no clipped text, overlap, missing glyphs, or broken layout.

### Environment-specific note

The execution container's `/usr/bin/bibtex` alternatives symlink was broken, although `/usr/bin/bibtex.original` was functional. The local-equivalent build therefore invoked the working BibTeX binary. This is an environment-level packaging defect rather than a repository defect; a normal TeX installation with working `bibtex` should satisfy the Makefile as written.

The Stage 9 placeholder contains no citations yet, so BibTeX also reports the expected empty-citation warning. Stage 10 will populate citations and re-run a complete bibliography build.

## Bibliography baseline

`references/references.bib` now contains verified baseline entries for the principal literature carried forward from Stage 6R, including Ago (2023), Mérel--Sexton, Cohen--Heifetz, Chakravorty--Sappington, Kharbach, Ebina--Shimizu, Nilssen, van der Weijde--Verhoef--van den Berg, and d'Aspremont--Gabszewicz--Thisse.

Bibliographic metadata will be rechecked during Stage 10 before submission; citation prose may use only the Stage 6R verified literature ledger or freshly verified sources.

## Springer / LSRS production note

Current LSRS guidance accepts/recommends LaTeX and requires editable source plus compiled manuscript material. Springer Nature's author support recommends its current template, but the canonical manuscript content may be format-converted later. No template-specific theory is embedded in the model files.

## Provenance

- theory authority: `theory/CANONICAL_THEORY_FREEZE_LSRS.md`;
- freeze pointer: `theory/LSRS_FREEZE_POINTER.md`;
- mathematical derivation: `model/STAGE_4R_LSRS_CANONICAL_MODEL.md`;
- novelty authority: `reviews/STAGE_6R_LSRS_NOVELTY_REKILL_2026-09-03.md`;
- manuscript investment authority: `reviews/STAGE_75_LSRS_FREEZE_DECISION_2026-09-03.md`.

## Remaining blockers

No scientific or repository blocker prevents section construction.

Items intentionally deferred to Stage 10:

- full manuscript prose;
- complete citation use and bibliography build;
- final LSRS abstract, keywords and JEL codes;
- anonymized submission version and title page;
- declarations and AI/LLM disclosure wording under current Springer rules;
- final Springer template/packaging conversion if needed.

## Exact Stage 10 writing contract

Stage 10 may write only against the Stage 8 freeze. Recommended construction sequence remains:

1. Model
2. Price equilibrium
3. Main proposition and benchmark/mechanism
4. Related literature
5. Introduction
6. Conclusion
7. Abstract / title / keywords / JEL
8. submission package

No new theorem, assumption, welfare result, location stage, or robustness exercise is authorized.

## Final verdict

`REPRODUCIBILITY BASELINE READY`

Routing: **GO TO STAGE 10 LSRS MANUSCRIPT CONSTRUCTION.**
