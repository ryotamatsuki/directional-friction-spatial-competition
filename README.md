# When Retail Demand Moves Transit Supply

Research repository for a transport-economics / spatial-competition theory paper on downstream retail pricing with demand-responsive allocation of a fixed transport-service resource.

## Current status

- Canonical workflow: `ryotamatsuki/research-paper-workflow` v1.1.
- Workflow release SHA: `488e5ab06c207909296a7564eaf9066f7f94319c`.
- Theory freeze: `DFSC-THEORY-2026-09-04-v1`.
- Current stage: **Stage 13 — Full-Paper Integration**.
- Verdict: **INTEGRATED MANUSCRIPT READY FOR SUBMISSION QA**.
- Primary target: **Economics of Transportation**.
- Publication route: **standard subscription / non-OA; zero mandatory author fee**.

The rejected Economics Bulletin route and the later exogenous `theta(y-x)_+` exploration are archived history only. They are not the canonical theory.

## Frozen mechanism

Two endpoint retail destinations compete in prices. A third-party transport service planner reallocates a fixed effective service resource across directions in response to passenger demand. One direction has exogenous background travel demand. Retail demand therefore changes transport supply, which changes both own and rival access and feeds back into retail demand.

A minimum service obligation prevents extreme off-equilibrium service collapse while remaining slack at the headline equilibrium.

## Integrated manuscript

The modular LaTeX manuscript is in `paper/`. Stage 13 aligned the abstract, introduction, Related Literature, and conclusion around one research question and one transport-specific contribution narrative. It also added Keywords/JEL metadata, the current Elsevier generative-AI declaration, computational-verification provenance, and a no-empirical-data statement.

Quantitative manuscript tables remain generated from frozen formulas rather than maintained manually.

## Frozen headline results

- a nonempty open set of global pure price equilibria with `BR_L' < 0 < BR_R'`;
- the sign asymmetry disappears in fixed-frequency, no-background-demand, and retail-unresponsive-frequency benchmarks;
- a slack minimum service floor can support the global equilibrium through off-equilibrium continuations;
- an operator-envelope identity links shopper access differences to marginal aggregate waiting cost;
- a verified private/social share wedge and same-floor constrained-efficient comparison;
- witness-specific intermediate nonbinding service-floor support band;
- local robustness to power waiting costs around `rho=1`.

See `model/CANONICAL_THEORY_FREEZE.md` for the authoritative specification.

## Economics of Transportation submission package

Stage-13 preparation files are in `submission/`:

- `highlights.txt` — four Elsevier-style highlights, each <=85 characters;
- `cover_letter.md` — journal-specific draft with explicit author-confirmation placeholders;
- `submission_metadata.yaml` — keywords/JEL, fee route, AI disclosure, reproducibility, and author-side fields;
- `eot_submission_checklist.md` — journal-facing QA and live zero-fee gate.

Claim alignment is recorded in `reviews/STAGE_13U_CLAIM_MAP.yaml`.

## Zero-fee submission policy

Only journals/routes with **zero mandatory submission fee and zero mandatory publication/page charge** may be used.

Submission ladder:
1. **Economics of Transportation** — standard subscription/non-OA route;
2. **Journal of Transport Economics and Policy** — fallback, with live fee reconfirmation because of the 2026 publisher transition;
3. **Research in Transportation Economics** — safety net, standard subscription/non-OA route.

Paid open access is not selected. If a live submission system presents any mandatory fee, abort that journal and move to the next zero-fee journal.

## Reproduce and build

```bash
python -m pip install -r requirements.txt
make verify
make paper
```

Or run the full gate:

```bash
make all
```

Detailed reproduction instructions are in `docs/REPRODUCIBILITY.md`.

## Repository map

- `model/`: canonical frozen theory and supporting model records.
- `theory/`: theory freeze manifest.
- `analysis/`: stage-by-stage mathematical analysis.
- `verification/`: symbolic and numerical verification assets, including the Stage-11 exact global-deviation re-audit.
- `reproducibility/`: machine-readable Stage-9 reproduction manifest.
- `literature/`: prior-art and novelty kill records.
- `reviews/`: workflow gates, claim maps, journal-positioning and fee-audit records.
- `paper/`: integrated modular LaTeX manuscript source.
- `submission/`: Economics of Transportation submission-preparation files.
- `scripts/`: reproducibility runners, freeze-integrity checks, and paper-table generation.
- `.github/workflows/`: CI verification and manuscript-build gates.
- `archive/`: rejected/superseded historical routes.

## Theory change control

No silent theory drift is allowed after Stage 8. Any substantive change to primitives, equilibrium claims, welfare, robustness, or positioning must reopen the earliest affected workflow gate. Stage 14 may verify the submission package, but may not add theory or inflate contribution claims.

## Next route

Proceed to **Stage 14 — Submission QA** after the Stage-13 CI gates pass.
