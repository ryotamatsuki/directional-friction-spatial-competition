# Stage 3P — Economics Bulletin Publication-Floor Literature Audit

Date: 2026-09-03

## 1. Publication standard being tested

Economics Bulletin states that it publishes original notes, comments, and preliminary results and that its publication standard is that a manuscript be **original, correct, and of interest to a specialist**. Peer-reviewed Notes, Comments, and Preliminary Results are limited to seven printed pages excluding references, tables, figures, and appendices.

This is materially weaker than the upper-field Stage-3/Stage-6 standard used earlier in this repository. The question here is therefore not whether the result establishes a new general principle of industrial organization, but whether it supports a concise, correct, nontrivial specialist note.

## 2. EB precedent for compact Hotelling contributions

Relevant Economics Bulletin precedents include:

- Kharbach (2009), *A Unidirectional Hotelling Model*, Economics Bulletin 29(3), 1814–1819: a compact directional-constraint modification of Hotelling with a new location result.
- Colombo (2009), *The unidirectional Hotelling model with spatial price discrimination*, Economics Bulletin 29(4), 3031–3040: extends the directional model to spatial price discrimination and a general transportation-cost class.
- Ebina and Shimizu (2012), *A unidirectional Hotelling model revisited*, Economics Bulletin 32(4), 2870–2875: a short correction showing that Kharbach's proposed outcome is not a subgame-perfect Nash equilibrium.
- Fairchild and Mallard (2017), *Hotelling competition with behaviourally-confused vendors*, Economics Bulletin 37(3), 1450–1456: a short Hotelling extension built around a countervailing mechanism against standard price-softening incentives.

These precedents show that EB does not require a new field-wide location principle if a short Hotelling result is genuinely new, correct, and economically interpretable.

## 3. Closest substantive prior-art threats

### 3.1 Nilssen (1997)

Sequential location with asymmetric transportation costs. Strong overlap on directional/asymmetric transportation and location, but the model is not the same fixed-location price game and does not appear to state the Stage-3P price-effect reversal.

Classification for the Stage-3P proposition: **COMPONENT OVERLAP / NOT EXACT**.

### 3.2 van der Weijde, Verhoef and van den Berg (2014; working paper 2012)

They formulate a Hotelling-type scheduling model with price-sensitive demand and asymmetric transport/schedule-delay costs, allowing fares and departure times and studying alternative timing structures and regulation. This is the strongest architecture-level threat because both prices and horizontal positions are endogenous in an asymmetric-cost environment.

The targeted search undertaken for Stage 3P did not locate an explicit theorem equivalent to:

> moving the right-hand firm farther away raises the left firm's equilibrium price but lowers the right firm's equilibrium price on an open parameter region under one-sided soft directional friction.

However, absence from the searched text is not proof of novelty; the final short-note build should reopen the model/proposition sections before submission.

Classification: **STRUCTURALLY CLOSE / EXACT RESULT NOT LOCATED**.

### 3.3 Hard unidirectional Hotelling line

Kharbach, Colombo, Ebina–Shimizu and related work use hard directional purchase restrictions or infinite costs in one direction. They create strong conceptual overlap but do not mechanically imply the finite-soft-friction price derivative obtained here.

Classification: **COMPONENT OVERLAP**.

### 3.4 Standard quadratic Hotelling

At `theta=0`, the Stage-3P result disappears: both equilibrium prices rise as the right firm moves farther away. This establishes that the sign reversal is not simply the standard quadratic benchmark in new notation.

Classification: **NESTED BENCHMARK**.

## 4. Targeted proposition-level search conclusion

Searches through 2026-09-03 using combinations of

- asymmetric transport costs + Hotelling + equilibrium prices,
- directional transport + price competition,
- differentiation + price decreases + asymmetric Hotelling,
- separation + price effect + transport asymmetry,

found broad prior art on asymmetric prices, asymmetric locations, scheduling, hard directional constraints, and equilibrium existence. They did **not** identify an exact published theorem with the Stage-3P sign pattern and threshold.

This is an evidentiary limit, not a proof of novelty.

## 5. Publication-floor assessment

The Stage-3P result clears the first three EB dimensions as follows:

### Correctness

**PASS at current algebraic gate.** The result is established on a strict global pure-strategy Nash equilibrium and has an exact rational witness. Symbolic verification is recorded in `verification/symbolic/eb_price_reversal.py`.

### Specialist interest

**PASS / plausible.** The result reverses the usual price-softening intuition for only the directionally exposed firm, while preserving the standard sign for its rival. The mechanism has a clear two-channel interpretation.

### Originality

**CONDITIONAL PASS.** No exact theorem was found in the targeted search, but the asymmetric-transport literature is close enough that a final direct proposition-level re-read is mandatory before submission.

## 6. Recommended paper scope

If pursued as an EB note, the manuscript should contain only:

1. motivation and distinction between hard directional constraints and soft directional friction;
2. the fixed-location price game with the left firm at 0 and right firm at `r`;
3. global-equilibrium proposition;
4. price-effect-reversal corollary and open parameter region;
5. standard `theta=0` benchmark;
6. brief mechanism discussion and closest-literature positioning.

Do **not** add endogenous location, welfare, government policy, or the killed equilibrium-existence-frontier route.

## 7. Audit verdict

**CONDITIONAL GO FOR AN ECONOMICS BULLETIN-LEVEL SHORT NOTE.**

The remaining blocker is narrow and explicit: conduct one final direct proposition-level audit of the strongest asymmetric-price/location predecessors before manuscript construction. If no exact/immediate-corollary result is found, proceed to a 5–7 page note.
