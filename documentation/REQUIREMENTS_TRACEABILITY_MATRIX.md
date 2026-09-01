# Requirements Traceability Matrix (RTM)

## MarTech Campaign Optimization & CRM Funnel Transformation

---

## 1. Purpose

The Requirements Traceability Matrix provides end-to-end traceability
between identified business gaps, business requirements, business rules,
functional requirements, Agile user stories and business validation.

The RTM helps confirm that:

- Every approved business requirement is addressed by solution requirements
- Functional requirements have a defined business purpose
- User stories can be traced back to approved requirements
- Requirement changes can be assessed for downstream impact
- UAT coverage can later be verified against the approved scope

This document will be maintained throughout the delivery lifecycle.

---

## 2. Traceability Matrix

| Gap | Business Requirement | Related Business Rule(s) | Functional Requirement(s) | User Story | UAT Coverage | Status |
|---|---|---|---|---|---|---|
| G-01 | BR-01 — Consolidated campaign performance | BRULE-05 | FR-01, FR-03, FR-14, FR-16, FR-17, FR-18 | US-01, US-03, US-05 | TBD during UAT design | Defined |
| G-02 | BR-02 — Consistent KPI and funnel definitions | BRULE-02, BRULE-03, BRULE-05, BRULE-06 | FR-07, FR-08, FR-09, FR-10, FR-15, FR-27 | US-04, US-08 | TBD during UAT design | Defined |
| G-03 | BR-03 — End-to-end campaign-to-revenue visibility | BRULE-02, BRULE-03, BRULE-04 | FR-02, FR-03, FR-10, FR-11, FR-14, FR-19, FR-20 | US-02, US-04 | TBD during UAT design | Defined |
| G-05 | BR-04 — Standardized campaign mapping | BRULE-01, BRULE-04 | FR-04, FR-05, FR-06 | US-02 | TBD during UAT design | Defined |
| G-04 | BR-05 — Marketing and CRM reconciliation | BRULE-07 | FR-11, FR-12, FR-13 | US-07 | TBD during UAT design | Defined |
| G-06 | BR-06 — Data-quality validation and exception handling | BRULE-06, BRULE-07 | FR-06, FR-09, FR-12, FR-13, FR-24, FR-25, FR-26, FR-29 | US-02, US-07 | TBD during UAT design | Defined |
| G-07 | BR-07 — Timely visibility and underperforming campaign identification | BRULE-08 | FR-18, FR-21, FR-22, FR-23 | US-03, US-06 | TBD during UAT design | Defined |
| G-08 | BR-08 — KPI, rule and issue ownership | BRULE-05 | FR-26, FR-27, FR-28, FR-29 | US-07, US-08 | TBD during UAT design | Defined |

---

## 3. Detailed Traceability Example

### Business Problem

Marketing and CRM stakeholders do not have a consistent end-to-end view
of campaign performance through downstream revenue.

### Traceability Path

**G-03**

Marketing campaign data and CRM funnel information are maintained separately.

↓

**BR-03**

Stakeholders require end-to-end visibility from marketing activity through
Lead, Opportunity, Win and Revenue outcomes.

↓

**BRULE-02 / BRULE-03 / BRULE-04**

Lead counting, funnel progression and Revenue attribution rules define
how CRM outcomes should be interpreted.

↓

**FR-19**

The solution shall provide visibility into the
Lead → Opportunity → Win funnel and corresponding conversion rates.

↓

**US-04 — CRM Funnel Visibility**

As a CRM / Sales Operations Manager,
I want to view Lead → Opportunity → Win conversion by campaign and channel,
so that I can identify where prospects are dropping from the funnel.

↓

**Acceptance Criteria**

AC-04.1 through AC-04.4 define the expected funnel behaviour
and KPI calculations.

↓

**UAT**

Business UAT scenarios will be mapped after formal UAT test design
is completed.

---

## 4. Change Impact Example

If the business changes the definition of a Lead, the Business Analyst
should assess the potential impact across:

- BRULE-02 — Lead Counting
- BRULE-03 — Funnel Progression
- FR-07 — KPI calculation
- FR-08 — Funnel KPI calculations
- FR-10 — Funnel sequence
- FR-14 — Campaign performance metrics
- FR-19 — Funnel visibility
- US-04 — CRM Funnel Visibility
- Related acceptance criteria
- Related UAT scenarios
- Dashboard metrics
- SQL validation logic

The affected stakeholders should review and approve the change before
the updated definition is implemented.

---

## 5. RTM Maintenance

The Business Analyst is responsible for maintaining requirement traceability
throughout the project lifecycle.

The RTM should be updated when:

- A business requirement is added, changed or removed
- A functional requirement is revised
- A business rule changes
- A user story is split or reprioritized
- UAT scenarios are created
- Scope changes are approved
- A requirement is deferred to a later release

---

## 6. Current Status

Business requirements, business rules, functional requirements and
MVP user stories have been defined.

UAT test-case mapping remains pending and will be added during
business test design.
