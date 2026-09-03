# Stage 10 — LSRS Section-by-Section Paper Construction

Date: 2026-09-03
Target journal: Letters in Spatial and Resource Sciences
Canonical workflow: `research-paper-workflow` v1.1
Theory authority: `theory/CANONICAL_THEORY_FREEZE_LSRS.md`

## Executive verdict

**FULL DRAFT READY FOR REFEREE GATE.**

A complete anonymous LSRS Letter draft has been constructed against the Stage 8 theory freeze. No new primitive, theorem, welfare result, endogenous-location claim, or policy extension was introduced during writing.

## Construction order completed

1. Model
2. Price equilibrium
3. Main reversal result / benchmark
4. Discussion and related literature
5. Introduction
6. Conclusion
7. Abstract
8. Keywords / JEL
9. Double-anonymous submission scaffolding

## Manuscript architecture

Working title:

**Directional Access Friction and the Price Effect of Spatial Separation**

Sections:

1. Introduction
2. Model
3. Price equilibrium
4. Directional friction and the price effect of separation
5. Discussion and relation to the literature
6. Conclusion
7. Generative-AI disclosure

The paper uses one main equilibrium proposition and one comparative-static corollary. It does not fragment the result into artificial propositions.

## Frozen theory used

Primitive:

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+.
\]

Displayed strict global price equilibrium:

\[
p_L^*-c=\frac{r^2+\theta r+2r+\theta}{3},
\qquad
p_R^*-c=\frac{4r-r^2+2\theta-\theta r}{3}.
\]

Main open-region result:

\[
r\in\left(\frac{\sqrt{17}-1}{4},1\right),
\qquad
4-2r<\theta<\frac{2r(5r-2)}{2-r},
\]

with

\[
\frac{\partial p_L^*}{\partial r}>0,
\qquad
\frac{\partial p_R^*}{\partial r}<0.
\]

The manuscript explicitly limits the uniqueness claim to unique global best responses at the displayed strict equilibrium pair; it does not claim exhaustive equilibrium uniqueness across every price regime.

## Verification performed

### Symbolic

Local-equivalent run on the completed manuscript branch:

- `verification/symbolic/eb_price_reversal.py` — PASS
- `verification/symbolic/stage4r_lsrs_verify.py` — PASS

These reproduce the FOCs, SOCs, cutoff feasibility, kink derivative, global-NE sufficient condition, price derivatives, open-region algebra, exact rational witness and `theta=0` benchmark.

### LaTeX / bibliography

Completed anonymous source was compiled with pdfLaTeX and BibTeX.

Result:

- build PASS;
- no unresolved citations;
- no unresolved cross-references;
- no LaTeX fatal error;
- one negligible overfull hbox warning of approximately 0.37 pt.

### Length / front matter

Validated working build:

- PDF pages: **7**;
- abstract: **171 words**;
- keywords: **5**;
- JEL: **D43; L13; R32**.

The current LSRS guideline requires a 150–250 word abstract, 4–6 keywords, JEL codes and generally fewer than 10 printed pages for Letters. These gates are satisfied in the working layout. Final Springer-template pagination must still be checked before submission.

### Visual PDF inspection

All seven pages were rendered to images and visually inspected. No clipping, overlap, missing glyphs, black boxes or unreadable equations were found.

## Literature/reference checks

The manuscript preserves the Stage 6R prior-art boundary.

Broad claims explicitly conceded as prior art:

- directional/asymmetric transport costs affect spatial competition;
- differentiation can produce perverse price responses;
- other asymmetries can move prices in opposite directions.

Key direct comparisons retained:

- Nilssen (1997)
- Kharbach (2009)
- Ebina & Shimizu (2012)
- van der Weijde, Verhoef & van den Berg (2014)
- Mérel & Sexton (2010)
- Ago (2023)
- Cohen & Heifetz (2024)
- Chakravorty & Sappington (2026)

Bibliographic metadata for Ago (2023), Cohen–Heifetz (2024), Nilssen (1997), Mérel–Sexton (2010), van der Weijde et al. (2014), and Chakravorty–Sappington (2026) was rechecked during Stage 10 against current publisher/RePEc records where available.

## LSRS compliance check

Live LSRS submission instructions were rechecked on 2026-09-03.

Current relevant requirements incorporated into the production package:

- double-anonymous peer review;
- editable LaTeX source plus compiled PDF;
- Letter generally under 10 printed pages;
- abstract 150–250 words;
- 4–6 keywords;
- JEL classification;
- author/declaration information separated from anonymous manuscript or entered in the live submission interface as directed;
- generative LLM use beyond AI-assisted copy editing must be documented.

The current guidelines note an ongoing transition to a new submission system, so the final system interface is authoritative for where author metadata/declarations are entered.

## Submission support files

Created:

- anonymous manuscript source: `paper/main.tex`
- title-page / metadata worksheet: `paper/titlepage/titlepage.tex`
- bibliography: `references/references.bib`
- cover-letter draft: `submission/COVER_LETTER_DRAFT.md`
- LSRS submission checklist: `docs/LSRS_SUBMISSION_CHECKLIST.md`
- generative-AI policy/disclosure note: `docs/AI_LLM_DISCLOSURE_NOTE.md`
- contribution-claim ledger: `docs/CONTRIBUTION_CLAIM_LEDGER.md`
- referee-risk ledger: `docs/REFEREE_RISK_LEDGER.md`
- journal-fit note: `docs/JOURNAL_FIT_LSRS.md`

## Remaining non-scientific submission metadata

The following cannot be truthfully completed without final human-author confirmation and therefore remain explicit placeholders rather than invented facts:

- author name as it should appear on publication;
- institutional affiliation and postal/city details;
- corresponding e-mail;
- ORCID if used;
- funding status;
- competing-interest status;
- author-contribution statement;
- final confirmation that the manuscript is not simultaneously under consideration elsewhere.

These are submission metadata, not Stage 10 scientific blockers.

## Referee risks carried forward

1. Fixed location: why is `r` varied if locations are not endogenous?
2. Functional-form specificity of the directional term.
3. Narrow one-theorem contribution.
4. Potential hidden exact prior-art result in asymmetric-transport literature.
5. Need to preserve the distinction between strict global best responses at the displayed equilibrium and exhaustive equilibrium uniqueness.

These are documented in `docs/REFEREE_RISK_LEDGER.md` and are the direct inputs to Stage 11.

## Theory-drift audit

No theory drift detected.

The Stage 10 manuscript does **not** add:

- endogenous location;
- welfare;
- policy;
- entry;
- capacity;
- quality;
- reservation prices;
- elastic demand;
- dynamics;
- general functional-form robustness.

## Final Stage 10 verdict

`FULL DRAFT READY FOR REFEREE GATE`

Next canonical stage: **Stage 11 — Referee Gate**.

Stage 11 may attack and require corrections to the existing manuscript. It may not add unmotivated extensions. Any discovered substantive theory error must reopen the appropriate earlier canonical stage.