# Stage 7U — Institutional Validation

Date: 2026-09-04

## Evidence classification

### 1. Minimum service frequency / headway standards

**Classification: ESTABLISHED.**

Primary source: U.S. Federal Transit Administration, Circular 4702.1B and associated Title VI fixed-route guidance. FTA requires transit providers to adopt system-wide service standards including vehicle headway/service frequency, and explicitly notes that a headway standard may establish a minimum frequency of service by area. The Circular's sample standards specify quantitative headways by service class and time period.

Implication for the model: `f_i >= f_bar` has an independent institutional interpretation. It is not introduced solely as a mathematical regularizer.

### 2. Service frequency adjusted using passenger loads / ridership productivity

**Classification: ESTABLISHED at the planning level.**

Primary/public-agency evidence:

- FTA guidance states that headway standards are related to vehicle load and gives the example that headways may be improved first on routes exceeding load-factor standards or having the highest load factors.
- King County Metro service guidelines state that service restructures should focus service frequency on the highest-ridership/productivity segments and match service capacity to ridership demand.

Implication: a demand-responsive service allocation rule is institutionally defensible as a reduced-form service-planning response.

### 3. Directional demand imbalance can alter effective directional service

**Classification: ESTABLISHED IN OPERATIONS LITERATURE / SUGGESTIVE FOR THE MODEL MAPPING.**

Furth (1985), `Alternating Deadheading in Bus Route Operations`, studies a bus route with directional passenger-demand imbalance. Some vehicles deadhead in the reverse direction, allowing a higher effective service frequency in the peak direction. The paper explicitly considers minimizing total wait time for a given fleet size.

Later work integrates deadheading and short-turning for routes with directional demand imbalance and derives frequency rules related to the classical square-root rule.

Implication: vehicle circulation does not force identical passenger-service frequencies in the two directions when deadheading/short-turning is available. However, the Stage-7 model should not be described as a generic unconstrained two-way fixed-route timetable.

### 4. Fixed fleet as a binding shared service resource

**Classification: ESTABLISHED.**

Transit operations and network-design models routinely optimize frequency subject to fixed fleet / vehicle-resource constraints. Furth (1985) directly studies waiting-time minimization for a given fleet size under directional imbalance.

Implication: `f_L + f_R = F` is a defensible stylized resource constraint when `f_i` is interpreted as effective directional service effort rather than literal long-run departures on an ordinary balanced route.

### 5. Demand-responsive transport and dynamic fleet reallocation

**Classification: ESTABLISHED AS A TECHNOLOGY / SUGGESTIVE AS A DIRECT APPLICATION.**

Recent DRT research explicitly treats flexible scheduling, dynamic resource allocation, repositioning, and adaptation to fluctuating passenger flows. This setting is a particularly natural interpretation of the shared-fleet feedback because vehicles need not remain tied to a symmetric fixed-route cycle.

Implication: DRT / shared-mobility allocation is a stronger institutional mapping than a conventional two-way line when defending independently adjustable directional service.

### 6. Retail-generated demand is large enough to affect service frequency

**Classification: UNVERIFIED GENERALLY.**

Agency service-planning rules respond to aggregate ridership, but Stage 7 did not locate primary evidence establishing that an individual ordinary retailer's price changes materially alter route frequency.

The model is therefore more defensible when each downstream player represents a large destination, mall, commercial district, event venue, tourism cluster, or other demand generator large enough to affect discretionary trip volumes.

This limitation should be explicit in the paper.

### 7. Umeda–Minami-Kusatsu as a literal empirical example

**Classification: UNVERIFIED.**

The project has not established that the specific Umeda–Minami-Kusatsu pair satisfies the model's direction-specific service-response mechanism. It may remain motivational intuition only unless separate timetable, ridership and service-planning evidence is collected.

Do not present the pair as empirical validation in the current theory paper.

## Institutional conclusion

The primitives `fixed shared fleet`, `ridership-responsive service allocation`, `directional demand imbalance`, and `minimum service frequency` all have defensible institutional counterparts.

The weakest link is the scale of the downstream retail demand shock. The model should therefore be framed around **large destinations / commercial clusters / demand-responsive service zones** rather than an arbitrary small retailer.

The strongest operational interpretations are:

1. fixed-route or shuttle systems using deadheading / short-turning under directional imbalance; and
2. demand-responsive or shared-mobility fleets dynamically repositioned between zones.

## Sources carried into paper build

- Federal Transit Administration, Circular 4702.1B, Title VI Requirements and Guidelines for FTA Recipients.
- FTA Title VI Fixed Route Transit Requirements guidance/transcript on vehicle headway and minimum frequency.
- King County Metro Service Guidelines / service restructure criteria.
- Furth (1985), `Alternating Deadheading in Bus Route Operations`, Transportation Science 19(1):13–28.
- `Integrating short turning and deadheading in the optimization of transit services`, Transportation Research Part A (2011).
- Liu & Ouyang (2021), `Mobility service design via joint optimization of transit networks and demand-responsive services`, Transportation Research Part B 151:22–41.
- 2026 DRT literature on adaptive fleet/service design under fluctuating directional demand, retained only as current institutional context, not as theoretical prior art for S1–S3.