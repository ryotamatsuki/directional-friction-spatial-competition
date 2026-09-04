# Project Status

Last updated: 2026-09-04

## Current state

**Stage 12U — Journal Positioning**

Scientific/editorial verdict: `PRIMARY JOURNAL SELECTED — GO TO INTEGRATION`

Theory freeze remains authoritative:

- Freeze ID: `DFSC-THEORY-2026-09-04-v1`
- canonical specification: `model/CANONICAL_THEORY_FREEZE.md`
- canonical specification commit: `9a1d42510e97513828637de75a939ec893d5c928`

Stage 12 changed no theory. It selected a submission ladder for the contribution that survived the Stage-11 hostile referee gate.

## Selected primary journal

**Economics of Transportation**

Positioning: **transport economics / spatial competition theory**.

The paper should be presented as a downstream retail-pricing model in which a third-party transport service planner reallocates a shared fixed service resource across directions in response to passenger demand. It must not be presented as a general theorem about strategic asymmetry or network effects.

## Mandatory zero-fee publication rule

This project now has a hard author-cost constraint:

- submission fee: **0**;
- mandatory publication/page charge: **0**;
- paid open-access APC: **do not select**;
- use the standard subscription / non-OA route where available;
- if the live submission system presents any mandatory fee, **abort that journal and move to the next zero-fee journal**.

The fee screen is recorded in `reviews/STAGE_12U_FEE_AUDIT.yaml`.

## Submission ladder

1. **Economics of Transportation** — primary; standard subscription/non-OA route.
2. **Journal of Transport Economics and Policy** — realistic fallback; reconfirm zero-fee status immediately before submission because the publisher changed to Liverpool University Press in 2026.
3. **Research in Transportation Economics** — safety net; standard subscription/non-OA route.

`Transportation Research Part B: Methodological` is not recommended as the lead submission: the frozen paper is mathematically valid but the current contribution is a constructive nonempty-open-set theorem rather than the broader methodological/general characterization typically expected there.

`Transportation Research Part A: Policy and Practice` and `Transport Policy` are not current targets because fitting them would require empirical/policy-evaluation content outside the frozen theory.

## Why Economics of Transportation

Current journal materials explicitly welcome transportation-economics research on interactions between transportation and other economic activities, cross-fertilization with industrial organization, and both theoretical and applied papers. This matches the surviving mechanism better than the alternatives without requiring a new empirical application or a broader methodological theorem.

Recent journal work continues to include analytical pricing, capacity, shared-vehicle and market-competition research, supporting referee-audience fit.

## Stage-11 residual risks carried into positioning

The selected journal must receive the narrow contribution that survived Stage 11:

- reduced-form absorption into a nonlinear market-share/network effect remains the main novelty attack;
- the service-planner/effective-resource architecture is institution-specific;
- robustness to elastic participation, non-uniform density and a profit-maximizing operator is not claimed;
- T1 is a constructive nonempty-open-set existence theorem, not a complete parameter classification.

Stage 12 does not authorize adding theory to address these risks.

## Economics of Transportation integration requirements

Stage 13 may make presentation-only changes:

- tighten title, abstract and introduction around the third-party fixed-resource mechanism;
- foreground global equilibrium certification and the slack-on-path/off-path service-floor role;
- keep the operator-envelope result as welfare accounting/microfoundation rather than a broad novelty claim;
- preserve the large-destination / commercial-cluster and managed-service interpretation;
- prepare Elsevier submission metadata and cover letter;
- add the current required generative-AI manuscript-preparation declaration immediately before the references;
- reconfirm the live zero-fee subscription route before submission.

It may not add location choice, subsidies, congestion, operator pricing, elastic participation, endogenous fleet size, new empirical data, or any other substantive extension without reopening the appropriate earlier stage.

## Verification / manuscript state

Stage-11 GitHub Actions run `33868498255` passed both required jobs:

- `verify`: **SUCCESS**;
- `paper`: **SUCCESS**.

The Stage-12 branch changes only journal-positioning records and does not alter the verified mathematical package.

## Canonical Stage-12 records

- `reviews/STAGE_12U_JOURNAL_POSITIONING_2026-09-04.md`
- `reviews/STAGE_12U_FEE_AUDIT.yaml`

## Gate status

- [x] Stage 3U mechanism search
- [x] Stage 4U minimal model gate
- [x] Stage 5U mechanism hardening
- [x] Stage 6U proposition-level novelty re-kill
- [x] Stage 7U welfare / generality / institutional validation
- [x] Stage 7.5U full-paper freeze decision
- [x] Stage 8U canonical theory freeze
- [x] Stage 9U reproducibility setup
- [x] Stage 10U paper construction
- [x] Stage 11U hostile referee gate
- [x] Stage 12U journal positioning — `PRIMARY JOURNAL SELECTED — GO TO INTEGRATION`
- [ ] Stage 13 journal integration / submission preparation

## Next action

Proceed to **Stage 13 — Integration / Submission Preparation for Economics of Transportation**.

The live submission must use the zero-mandatory-fee standard publication route. If any mandatory submission/publication fee is presented, stop and move to the next journal in the ladder rather than paying it.
