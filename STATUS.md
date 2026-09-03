# Project Status

Last updated: 2026-09-03

## Current state

**Stage 10 — LSRS Section-by-Section Paper Construction**

Scientific status: `FULL DRAFT READY FOR REFEREE GATE` pending Stage 10 closeout record/PR metadata.

Target journal: **Letters in Spatial and Resource Sciences (LSRS)**.
Fallback: Economics Bulletin.

The earlier Stage 3Q Economics Bulletin salvage result remains the scientific foundation, but the canonical publication route has now passed Stage 4R-LSRS, Stage 6R-LSRS, Stage 7, Stage 7.5, Stage 8 theory freeze, and Stage 9 reproducibility setup without changing the primitive or main theorem.

## Canonical theory

\[
\tau(x,y;\theta)=(x-y)^2+\theta\max\{y-x,0\},\qquad \theta\ge0.
\]

Covered unit-demand Hotelling duopoly, no outside option, common marginal cost `c`, firm L fixed at `0`, firm R fixed at `r in (0,1)`, simultaneous uniform mill prices.

No endogenous location stage.

## Frozen main result

Let

\[
\bar r=\frac{\sqrt{17}-1}{4}.
\]

For

\[
r\in(\bar r,1),
\qquad
4-2r<\theta<\frac{2r(5r-2)}{2-r},
\]

the canonical price pair is a strict global pure-strategy Nash equilibrium and

\[
\frac{\partial p_L^*}{\partial r}>0,
\qquad
\frac{\partial p_R^*}{\partial r}<0.
\]

At `theta=0`, both price derivatives are positive.

Approved mechanism: **competition softening versus directional exposure**.

## Canonical gate record

- [x] Stage 4R-LSRS — minimal global price theorem canonicalized — GO
- [x] Stage 6R-LSRS — actual-proposition novelty re-kill — GO
- [x] Stage 7-LSRS — spatial relevance/generality audit — GO
- [x] Stage 7.5-LSRS — manuscript investment decision — GO TO LSRS LETTER
- [x] Stage 8-LSRS — canonical theory freeze
- [x] Stage 9-LSRS — reproducibility baseline ready
- [x] Stage 10-LSRS — full anonymous draft written
- [x] Stage 10 symbolic verification — PASS
- [x] Stage 10 local-equivalent PDF build — PASS
- [x] Stage 10 visual PDF inspection — PASS
- [ ] Stage 11 — referee attack gate — NEXT

## Stage 10 manuscript status

Working title:

**Directional Access Friction and the Price Effect of Spatial Separation**

Current anonymous working build:

- 7 pages in the current article layout;
- abstract: 171 words;
- 5 keywords;
- JEL: D43, L13, R32;
- no unresolved citations/cross-references in the validated build;
- one negligible 0.37pt overfull hbox warning only;
- no clipping, overlap, broken glyphs, or visible rendering defects.

The final Springer Nature template may paginate differently and must be rechecked before submission.

## Production files

- `paper/main.tex`
- `paper/sections/introduction.tex`
- `paper/sections/model.tex`
- `paper/sections/equilibrium.tex`
- `paper/sections/main_result.tex`
- `paper/sections/literature.tex`
- `paper/sections/conclusion.tex`
- `paper/titlepage/titlepage.tex`
- `references/references.bib`
- `verification/symbolic/eb_price_reversal.py`
- `verification/symbolic/stage4r_lsrs_verify.py`
- `docs/LSRS_SUBMISSION_CHECKLIST.md`
- `docs/AI_LLM_DISCLOSURE_NOTE.md`
- `docs/CONTRIBUTION_CLAIM_LEDGER.md`
- `docs/REFEREE_RISK_LEDGER.md`
- `docs/JOURNAL_FIT_LSRS.md`
- `submission/COVER_LETTER_DRAFT.md`

## Current LSRS compliance notes

The live 2026-09-03 LSRS guidelines were checked. The manuscript is designed for double-anonymous review, under the journal's usual 10-printed-page Letter limit, with a 150–250 word abstract, 4–6 keywords and JEL codes. Current guidelines also require disclosure of generative LLM use beyond copy editing; a manuscript disclosure and a project disclosure note are present.

Author-specific metadata, funding, competing interests and final author-contribution wording remain for the human author to confirm in the title-page/submission interface before actual submission.

## Claims explicitly excluded

Do not claim novelty for:

- directional/asymmetric transport costs generally;
- greater differentiation lowering price generally;
- asymmetry moving prices oppositely generally;
- endogenous location;
- price-equilibrium existence frontiers;
- welfare or policy results;
- arbitrary directional-cost robustness.

## Next action

Run **Stage 11 — Referee Gate** against the complete LSRS manuscript. Do not add new theory unless Stage 11 identifies a fatal error that requires reopening an earlier canonical stage.