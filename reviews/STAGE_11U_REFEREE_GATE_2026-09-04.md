# Stage 11U — Multi-Referee Hostile Review / Referee Gate

Date: 2026-09-04  
Workflow: `research-paper-workflow` v1.1 / `templates/STAGE_11_REFEREE_GATE.md`  
Checklist: `checklists/REFEREE_ATTACK_CHECKLIST.md`  
Theory freeze: `DFSC-THEORY-2026-09-04-v1`  
Manuscript under attack: Stage-10 full draft on `stage10u/paper-construction`

## Executive verdict

# `GO TO JOURNAL POSITIONING`

No fatal conceptual, mathematical, welfare-accounting, or prior-art attack remains on the narrow frozen contribution after hostile review and bounded manuscript hardening.

The referee gate did identify four material vulnerabilities in the Stage-10 draft:

1. the shopper/operator timing could be read as circular literal chronology rather than a fulfilled-expectations continuation;
2. the phrase “gross value sufficiently high for full coverage” did not formally define full coverage for an unrestricted price strategy set;
3. the global-deviation proof was mathematically supported but the verification code printed root-isolation output rather than asserting the exact physical root counts and stationary-point classification;
4. the literature discussion underweighted vertical transport-market and scarce-upstream-capacity papers that are closer threats than the initial Hotelling-network comparison alone.

All four were repaired without changing a primitive, timing in the underlying game, equilibrium object, theorem, welfare concept, or robustness claim. The theory freeze therefore remains intact.

The strongest residual risks are contribution-level rather than validity failures:

- a skeptical referee can still describe the local demand system as a nonlinear market-share externality;
- the waiting-cost-minimizing third-party service planner and the effective fixed-resource normalization are institution-specific;
- the headline theorem is an open-set existence result built around an exact witness rather than a broad closed-form parameter characterization.

These residual risks should determine journal positioning in Stage 12. They do not require theory reopening at Stage 11.

---

# Referee A — Novelty and mechanism

## A1. “This is strategic asymmetry in different notation.”

**Severity:** MAJOR BUT FIXABLE in broad framing; resolved.  
**Evidence:** Tombak (2006) already defines strategic asymmetry; the manuscript itself derives `BR_L'<0<BR_R'`. Transport-network pricing also contains competing complement/substitute forces.  
**Current response:** The Introduction and Related Literature now state explicitly that the sign pattern is known. The claim is restricted to the particular third-party shared-service microfoundation and its global downstream price equilibrium.  
**Required fix:** Completed.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## A2. “This is a standard Hotelling/network-externality model with a transit story.”

**Severity:** MAJOR residual risk, not fatal.  
**Evidence:** Grilo--Shy--Thisse, Griva--Vettas, Tolotti--Yepez, and Toshimitsu establish broad Hotelling/network feedback effects. The local price game can be written as a nonlinear share-dependent access term.  
**Current response:** The paper does not claim a general network-externality theorem. The transport layer generates three objects not supplied by an arbitrary `Phi(x)` alone: (i) a shared physical-resource reallocation that withdraws service from the rival direction; (ii) a piecewise off-path continuation induced by a service floor that is slack on path; and (iii) a welfare accounting map from the operator problem.  
**Required fix:** Maintain institution-specific positioning; do not promote the local curvature condition as the contribution.  
**Theory reopen?:** NO unless the paper seeks a general-IO claim.  
**Resolved?:** PARTIALLY; residual positioning risk routed to Stage 12.

## A3. “Upstream transport facilities already affect downstream carrier competition.”

**Severity:** MAJOR BUT FIXABLE; resolved in literature positioning.  
**Evidence:** Basso--Zhang (2007) combine congestible facilities with downstream carriers; de Palma--Ordás Criado--Randrianarisoa (2018) model facility fees, service timing, and downstream fares; Álvarez-Sanjaime et al. (2020) model airport charges, airline frequencies and fares under asymmetric frequency valuation.  
**Current response:** These papers are now discussed directly. The manuscript no longer implies that an upstream transport layer influencing downstream prices is new. It distinguishes the present model by a non-price-setting third-party service planner that reallocates one fixed resource across rival directions in response to downstream demand.  
**Required fix:** Completed.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## A4. “Scarce upstream capacity allocation affecting downstream competition is already known.”

**Severity:** MAJOR BUT FIXABLE; resolved in literature positioning.  
**Evidence:** Chen--Li--Zhang (2013) show that an upstream capacity-allocation mechanism can reshape downstream retailer competition.  
**Current response:** The paper now treats this as a conceptual predecessor, not an unrelated literature. The remaining distinction is that the allocated object is transport service affecting generalized consumer access, allocation responds to downstream trip demand, and an on-path-slack service floor changes only large continuations.  
**Required fix:** Completed.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## A5. “The result is built into the fixed fleet: one side gains only because the other loses.”

**Severity:** MINOR after nested tests.  
**Evidence:** The fixed resource mechanically creates a rival-service effect, but the opposite BR signs do not follow from that alone. In the frozen benchmarks, fixed service, `M=0`, or retail-unresponsive service restores equal local slopes of `1/2`.  
**Current response:** Proposition T3 isolates the interaction of directional background demand with demand-responsive shared-resource allocation.  
**Required fix:** None beyond current benchmark exposition.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

### Referee A recommendation

**Major revision / potentially publishable in a transport-economics outlet.** The contribution is narrower than the raw sign result, but a single exact predecessor for the full strategic chain was not identified in the re-audit. Novelty should be described as `CLOSE BUT DISTINCT / APPARENT GAP`, never as an unrestricted first result on strategic asymmetry or network effects.

---

# Referee B — Assumptions and mathematics

## B1. “The timing is internally circular: the operator needs x before shoppers choose, but shoppers need frequency before choosing.”

**Severity:** MAJOR BUT FIXABLE; resolved.  
**Evidence:** The Stage-10 Model literally listed operator allocation before shopper choice although the allocation is conditional on shopper share.  
**Current response:** The Model now defines the lower-stage object as a fulfilled-expectations fixed point: for a candidate share, the operator allocates service; shoppers choose taking that service as given; an admissible continuation is a share consistent with those choices. The paper explicitly says this is not literal observation of realized shopping demand before choice.  
**Required fix:** Completed.  
**Theory reopen?:** NO; this is the equilibrium interpretation already used by the frozen equations.  
**Resolved?:** YES.

## B2. “Full coverage is not well defined for arbitrary price deviations.”

**Severity:** MAJOR BUT FIXABLE; resolved.  
**Evidence:** “v sufficiently high” is not enough if price strategies are unrestricted, because arbitrarily large prices could make an outside option relevant if one exists.  
**Current response:** Shopper demand is now defined explicitly as inelastic unit demand over the two destinations, with no outside option. `v` is a common welfare normalization. This is the formal version of the frozen full-coverage assumption.  
**Required fix:** Completed.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## B3. “The headline theorem is a local FOC dressed up as a Nash equilibrium.”

**Severity:** potentially FATAL if true; rejected by re-audit.  
**Evidence:** Stage 4 had in fact found a profitable global deviation in the no-floor model, so this attack is substantive.  
**Current response:** In the hardened witness, `G_q` is strictly increasing globally; each unilateral price maps to a unique share. The global deviation problem is parameterized by that share and split into slack and binding-floor regions.  
**Independent Stage-11 audit:** Over the exact algebraic field `Q(sqrt(7599))`, the L slack-region derivative has exactly two physical roots and the R derivative exactly one. The common root maps exactly to `x*=23/40` and is a local maximum for both; L's second root maps to `x≈0.652879` and is a local minimum. Binding-region vertices, service-floor boundary, and corners all yield lower profit than the candidate.  
**Required fix:** A new deterministic exact verifier was added and the Appendix now states the root counts and classification explicitly.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## B4. “Numerical root patterns are being presented as proof.”

**Severity:** MAJOR BUT FIXABLE; resolved for T1.  
**Evidence:** The original Stage-5 script used exact norm polynomials but merely printed isolated intervals.  
**Current response:** `verification/symbolic/stage11u_global_deviation_reaudit.py` now uses exact `Poly.count_roots` over `Q(sqrt(7599))`, exact derivative-sign comparisons, and explicit binding/corner assertions. The 595/444 neighborhood grid remains supporting evidence only.  
**Required fix:** Completed.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## B5. “The q support band is only numerical.”

**Severity:** MINOR.  
**Evidence:** `q_L,q_U` are obtained by high-precision one-dimensional root solving at the exact witness.  
**Current response:** The paper labels the displayed endpoints witness-specific numerical roots and does not call them universal analytic thresholds. T2 itself is the existence of a slack-on-path floor that changes off-path support.  
**Required fix:** Appendix language tightened.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## B6. “Alternative shopper distributions, outside options, or operator objectives may destroy the result.”

**Severity:** MAJOR external-validity limitation, not a current theorem defect.  
**Evidence:** The frozen model uses uniform shoppers, inelastic unit demand, and a waiting-cost-minimizing service planner.  
**Current response:** The paper makes no theorem claim for non-uniform density, elastic participation, or a profit-maximizing operator. Power waiting-cost robustness addresses functional form only.  
**Required fix:** Do not add an unplanned extension in Stage 11. State the scope precisely. Any claim of robustness to these changes would require formal theory change control.  
**Theory reopen?:** YES if such robustness becomes required for the target journal.  
**Resolved?:** NO as a generality question; acceptable as a bounded limitation for current paper.

### Referee B recommendation

**No mathematical rejection after re-audit.** The main theorem survives a stronger exact root-count check. The paper should continue to emphasize that it proves an existence/open-set result, not a complete parameter classification.

---

# Referee C — Welfare and institutional interpretation

## C1. “The welfare result is only markup-transfer accounting.”

**Severity:** MINOR / rejected.  
**Evidence:** Retail prices cancel between consumer and producer surplus, while spatial cost and waiting cost remain real costs. Background-passenger waiting cost is included.  
**Current response:** The welfare section explicitly derives `TW=v+M vbar-c-C_q(x)`. The reported 1.22% witness gain is a real-cost difference, not a price-transfer gain.  
**Required fix:** None.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## C2. “The envelope theorem is mechanical and cannot be a main novelty claim.”

**Severity:** MAJOR framing issue; resolved.  
**Evidence:** Because the operator minimizes the same waiting-cost object appearing in welfare, the identity follows from the envelope theorem.  
**Current response:** The Introduction now calls it a welfare implication rather than a separate headline novelty; the Welfare section says the envelope theorem itself is not claimed as a new general result. Its role is to discipline welfare accounting and defend the operator microfoundation against an arbitrary reduced-form externality.  
**Required fix:** Completed.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## C3. “The ‘second best’ is not implementable because the model has no instrument that assigns shoppers.”

**Severity:** MAJOR BUT FIXABLE; resolved.  
**Evidence:** `x_SB` is the minimizer of real cost conditional on the same exogenous service floor; no modeled policy directly sets x.  
**Current response:** It is now explicitly called the `same-floor constrained-efficient allocation (or same-floor second best)` and described as an allocation benchmark, not an implemented policy.  
**Required fix:** Completed.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## C4. “The service floor has no welfare rationale in the model.”

**Severity:** MAJOR limitation, already disclosed.  
**Evidence:** Equity/coverage value is not in the utilitarian welfare function; absent the floor, the witness first best shuts down one direction.  
**Current response:** The paper treats `q` as an exogenous service-availability obligation and explicitly refuses to derive an optimal floor or claim equity benefits.  
**Required fix:** None unless the paper seeks optimal regulation.  
**Theory reopen?:** YES for an endogenous optimal-q or equity extension.  
**Resolved?:** YES within the stated scope.

## C5. “A conventional two-way route cannot freely choose independent directional frequencies with f_L+f_R=F.”

**Severity:** MAJOR institutional concern; bounded but not eliminated.  
**Evidence:** Physical vehicle circulation links opposite-direction service on ordinary fixed routes.  
**Current response:** The manuscript now defines `F` as an effective service resource with cycle-time requirements absorbed into units and restricts the strongest mapping to deadheading/short-turning, shuttles, DRT, and shared-mobility repositioning. Furth and Cortés et al. provide operational precedents for directional reallocation.  
**Required fix:** Keep the interpretation narrow; do not present the model as a generic balanced bus timetable.  
**Theory reopen?:** YES if literal heterogeneous cycle times or vehicle circulation are modeled.  
**Resolved?:** PARTIALLY; acceptable as an external-validity limitation.

## C6. “Why would a third-party operator minimize waiting cost, and why would retail demand matter enough?”

**Severity:** MAJOR institutional concern; bounded by interpretation.  
**Evidence:** The operator objective is a service-planning rule, not derived from private profit maximization. Evidence that ordinary individual retailers move public-transit frequency is not established.  
**Current response:** The paper now calls the operator a service planner/operational allocation layer and interprets downstream firms as large destinations or commercial clusters. It explicitly says DRT/shared-mobility evidence establishes physical reallocability, not the exact operator objective.  
**Required fix:** Preserve these qualifiers.  
**Theory reopen?:** YES if a profit-maximizing operator or endogenous service contract is required.  
**Resolved?:** PARTIALLY; institution-specific scope remains.

### Referee C recommendation

**Publishability depends on disciplined interpretation.** Welfare accounting is valid, but neither the service floor nor the operator objective should be oversold as an optimal policy design. The transport application is strongest for managed/shuttle/DRT-type service allocation rather than a generic public-bus line.

---

# Referee D — Journal fit and exposition

## D1. “This is an IO curiosity, not transportation economics.”

**Severity:** MINOR for scope; contribution-level question remains.  
**Evidence:** The model's distinctive object is a fixed transport-service resource, directional waiting cost, transit service standard, and welfare from spatial plus waiting costs.  
**Current response:** The paper is explicitly positioned as transport economics / spatial competition rather than general IO. The operator/fleet mechanism and institutional literature are central sections, not cosmetic applications.  
**Required fix:** None at Stage 11.  
**Theory reopen?:** NO.  
**Resolved?:** YES on subject-matter fit.

## D2. “The contribution is too narrow for Economics of Transportation.”

**Severity:** MAJOR unresolved journal-level risk.  
**Evidence:** The core theorem is an open-set existence result established constructively from an exact witness; there is no complete parameter-region characterization and no empirical application.  
**Current response:** The paper adds global equilibrium certification, a nonbinding off-path service-floor result, nested identification, welfare mapping, and institutional interpretation. This is more than a one-equation comparative static, but editorial sufficiency cannot be certified internally.  
**Required fix:** Stage 12 must compare the surviving contribution against current journal scopes and recent theory papers rather than force-fit the manuscript to a preferred outlet.  
**Theory reopen?:** NO unless all realistic journals require a stronger theorem.  
**Resolved?:** NO; routed to Stage 12.

## D3. “The paper is overclaiming.”

**Severity:** MAJOR in the original wording; resolved.  
**Evidence:** Earlier prose called the envelope identity a third contribution and did not confront vertical-market/capacity-allocation papers.  
**Current response:** Introduction and Related Literature now explicitly concede known strategic asymmetry, mixed transport price interactions, vertical transport competition, and upstream capacity allocation. Welfare is presented as an implication.  
**Required fix:** Completed.  
**Theory reopen?:** NO.  
**Resolved?:** YES.

## D4. “The exact witness makes the paper look numerical or contrived.”

**Severity:** MAJOR presentation risk, not a validity defect.  
**Evidence:** The theorem uses a deliberately constructed algebraic witness with an unusual value of `w/(Ft)`.  
**Current response:** The witness is presented only as a proof device; all decisive inequalities are strict, giving an open neighborhood, and the deterministic neighborhood audit supplies supporting evidence.  
**Required fix:** In journal positioning and final edit, keep witness algebra largely in the proof/appendix and lead with the economic mechanism.  
**Theory reopen?:** NO.  
**Resolved?:** PARTIALLY; presentation issue remains.

### Referee D recommendation

**Proceed to journal positioning, not directly to submission.** The subject fits transport economics, but the right outlet depends on how much theoretical breadth the editor expects from a pure-theory paper.

---

# Consolidated severity table

| Attack | Severity at discovery | Stage-11 disposition | Theory reopen? |
|---|---|---|---|
| strategic asymmetry already known | Major | resolved by narrower claim | No |
| generic Hotelling/network absorption | Major residual | institution-specific defense; route to Stage 12 | No |
| vertical transport prior art omitted | Major | fixed in literature/intro | No |
| upstream capacity-allocation prior art omitted | Major | fixed in literature | No |
| result mechanically built into fixed fleet | Minor | rejected by nested benchmarks | No |
| circular shopper/operator timing | Major | fixed as fulfilled-expectations continuation | No |
| ill-defined full coverage under deviations | Major | fixed as inelastic unit demand/no outside option | No |
| local FOC mistaken for global Nash | Potentially fatal | exact re-audit passes | No |
| root classification only printed, not asserted | Major | new exact Stage-11 verifier | No |
| numerical q-band overclaimed | Minor | witness-specific status retained | No |
| alternative density/outside option/operator objective | Major limitation | not claimed; possible future change control | Yes if pursued |
| welfare is transfers | Minor | rejected by exact accounting | No |
| envelope identity overclaimed | Major framing | downgraded to welfare implication | No |
| second-best sounds implementable | Major | clarified as constrained-efficient benchmark | No |
| coverage rationale absent from welfare | Major limitation | explicitly scoped out | Yes if endogenized |
| vehicle circulation / literal directional frequency | Major limitation | effective-resource + narrow institutional mapping | Yes if modeled literally |
| retailer demand too small / operator objective ad hoc | Major limitation | large-destination/service-planner interpretation | Yes if changed |
| wrong field | Minor | transport content is substantive | No |
| insufficient contribution for EoT | Major residual | Stage 12 journal-selection question | No |
| witness looks contrived | Major presentation | open-set theorem + appendix proof device | No |

---

# Required fixes completed in Stage 11

1. **Fixed-point timing clarification** in `paper/sections/02_model.tex`.
2. **Formal inelastic unit-demand/full-coverage definition** in `paper/sections/02_model.tex`.
3. **Exact hostile global-deviation re-audit** in `verification/symbolic/stage11u_global_deviation_reaudit.py`, included in `make verify`.
4. **Self-contained root-count and stationary-point classification** in `paper/sections/09_appendix.tex`.
5. **Narrower welfare language / constrained-efficient benchmark terminology** in `paper/sections/01_introduction.tex` and `paper/sections/05_welfare.tex`.
6. **Operator/effective-resource institutional qualifiers** in `paper/sections/06_robustness_institutions.tex`.
7. **Expanded closest-literature confrontation** in `paper/sections/07_related_literature.tex` and `paper/references/references.bib`, adding vertical transport, shared upstream capacity, current transport strategic interaction, and 2026 Hotelling-network-connectivity threats.

No completed fix changes the frozen theory.

---

# Theory-change implications

No Stage-11 fix triggers theory change control.

The following possible responses to residual criticisms **would** reopen theory and are therefore prohibited as casual referee-gate additions:

- elastic participation or an explicit outside option;
- non-uniform shopper density if claimed as a theorem-level robustness result;
- a profit-maximizing or fare-setting transport operator;
- endogenous fleet size, unequal cycle-time technology, or full vehicle-circulation constraints;
- an endogenous/equity-valued minimum service standard;
- a complete analytic characterization replacing the current existence/open-set theorem if it requires new assumptions or changes the mechanism.

Stage 12 must first select a realistic outlet for the surviving paper before deciding whether any of these are actually demanded.

---

# Resolved versus unresolved attacks

## Resolved

- local-FOC/global-Nash validity;
- exact root count and stationary-point classification at the witness;
- shopper/operator timing interpretation;
- full-coverage formalization;
- welfare transfer accounting;
- overclaiming of envelope identity;
- misleading implementability reading of the same-floor second best;
- omission of the closest vertical transport and upstream-capacity literatures;
- overclaiming strategic asymmetry or transport mixed strategic relations as new.

## Unresolved but nonfatal

1. **Reduced-form absorption risk:** the local mechanism remains representable as a nonlinear share externality; defense is transport-specific full-game structure, not general IO novelty.
2. **Institutional specificity:** the service planner and effective fixed-resource normalization fit some transport settings better than others.
3. **Alternative-demand/operator robustness:** not established and not claimed.
4. **Contribution-level uncertainty:** whether a constructive open-set theorem plus welfare/implementation results clears a particular journal's pure-theory threshold.

No unresolved item is a contradiction of the frozen theorem.

---

# Final gate verdict

# `GO TO JOURNAL POSITIONING`

The paper survives hostile review as a **narrow transport-economics / spatial-competition theory contribution**. It should not be submitted under a general-IO novelty claim.

## Stage 12 contract

Stage 12 must:

1. compare the actual surviving contribution—not the earlier directional-friction motivation—against current journal aims and recent comparable theory papers;
2. evaluate **Economics of Transportation**, **Journal of Transport Economics and Policy**, **Research in Transportation Economics**, and any stronger/weaker plausible outlet on fit and contribution threshold;
3. treat reduced-form absorption and institutional specificity as the key editorial-risk dimensions;
4. choose the journal before journal-specific formatting or title/abstract tuning;
5. not add new theory merely to reach a preferred outlet.
