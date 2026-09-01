# Business Rules & KPI Definitions

## MarTech Campaign Optimization & CRM Funnel Transformation

---

## 1. Purpose

This document captures the business rules and KPI definitions agreed
during requirements clarification workshops with Marketing, CRM/Sales
Operations and Data/BI stakeholders.

The objective is to ensure that campaign and funnel metrics are interpreted
consistently across reporting, data validation and UAT.

---

## 2. Requirement Clarification Context

During requirements review, several terms within the BRD required
additional clarification before detailed functional requirements
could be defined.

Key areas requiring alignment included:

- What constitutes a Lead, Opportunity and Win
- How campaign KPIs should be calculated
- How campaign records should be matched across Marketing and CRM
- How discrepancies between Marketing and CRM data should be handled
- What constitutes an underperforming campaign

The following rules represent the agreed business definitions for
this portfolio case study.

---

## 3. Funnel Definitions

| Term | Agreed Business Definition | Business Owner |
|---|---|---|
| Lead | A valid lead record created in CRM and associated with an identifiable marketing campaign or channel | CRM / Sales Operations |
| Opportunity | A Lead that has progressed to a qualified sales opportunity in CRM | CRM / Sales Operations |
| Win | An Opportunity recorded as successfully closed/won in CRM | CRM / Sales Operations |
| Revenue | Revenue associated with successfully won opportunities and attributable to the relevant campaign/channel | CRM / Sales Operations |

---

## 4. KPI Definitions

| KPI ID | KPI | Business Definition / Formula | Owner |
|---|---|---|---|
| KPI-01 | Impressions | Total number of times campaign content was displayed | Marketing Operations |
| KPI-02 | Clicks | Total recorded interactions/clicks on campaign content | Marketing Operations |
| KPI-03 | CTR | Clicks ÷ Impressions × 100 | Marketing Operations |
| KPI-04 | Leads | Count of valid CRM Lead records attributable to campaign activity | CRM / Sales Operations |
| KPI-05 | Cost per Lead (CPL) | Marketing Spend ÷ Leads | Marketing Operations |
| KPI-06 | Lead-to-Opportunity Conversion Rate | Opportunities ÷ Leads × 100 | CRM / Sales Operations |
| KPI-07 | Opportunity Win Rate | Wins ÷ Opportunities × 100 | CRM / Sales Operations |
| KPI-08 | Revenue | Revenue attributed to successfully won opportunities | CRM / Sales Operations |
| KPI-09 | ROAS | Revenue ÷ Marketing Spend | Marketing Operations |

---

## 5. Business Rules

### BRULE-01 — Campaign Identification

Each campaign should have a consistent business identifier or an approved
mapping value that enables campaign records to be associated across
Marketing and CRM data sources.

Campaign records that cannot be mapped should be flagged as exceptions
rather than automatically attributed.

---

### BRULE-02 — Lead Counting

Only valid CRM Lead records attributable to the relevant campaign or
marketing channel will be included in funnel reporting.

Marketing-platform responses that do not result in a valid CRM Lead record
will not be counted as CRM Leads.

---

### BRULE-03 — Funnel Progression

Funnel metrics will follow the sequence:

Lead → Opportunity → Win

A Win must therefore originate from a valid Opportunity and an Opportunity
must originate from a valid Lead for standard funnel reporting.

---

### BRULE-04 — Revenue Attribution

Revenue used in campaign performance reporting must be associated with
a successfully won CRM Opportunity and linked to an identifiable
campaign or channel.

Unmapped revenue should be reported separately as a data-quality exception.

---

### BRULE-05 — KPI Calculation

All supported reports must use the KPI definitions documented in this file.

Teams should not maintain alternate versions of the same KPI within
official campaign performance reporting without business approval.

---

### BRULE-06 — Division by Zero

Where a KPI denominator is zero, the calculated metric should return
Not Applicable / blank rather than producing an invalid value.

Examples include:

- CPL when Leads = 0
- CTR when Impressions = 0
- Win Rate when Opportunities = 0
- ROAS when Marketing Spend = 0

---

### BRULE-07 — Data Reconciliation

Where Marketing and CRM figures do not reconcile, the discrepancy should
be flagged for investigation.

The reporting process should not silently overwrite or manually force
values to match without an agreed resolution.

---

### BRULE-08 — Underperforming Campaign

For the initial portfolio release, a campaign with ROAS below 2.0 will
be flagged for business review.

This threshold is a portfolio assumption and should be configurable
or subject to business approval in a production implementation.

A campaign being flagged does not automatically mean that it should
be stopped; stakeholders should consider additional factors before
making a campaign decision.

---

## 6. Data Ownership

Marketing Operations owns:

Campaign spend, impressions, clicks and marketing KPI definitions.

CRM / Sales Operations owns:

Lead, Opportunity, Win, Revenue and CRM funnel-stage definitions.

The Business Analyst is responsible for documenting agreed definitions,
maintaining requirement traceability and coordinating clarification
where definitions affect multiple teams.

Data/BI Engineering is responsible for implementing the approved
calculation and transformation rules within the reporting solution.

---

## 7. Traceability

These business rules support the following Business Requirements:

| Business Rule Area | Related BRD Requirement |
|---|---|
| KPI definitions | BR-02 |
| Funnel definitions | BR-02, BR-03 |
| Campaign mapping | BR-04 |
| Marketing / CRM reconciliation | BR-05 |
| Data validation | BR-06 |
| Underperforming campaign identification | BR-07 |
| Business ownership | BR-08 |

These rules will be referenced when defining detailed functional
requirements and UAT scenarios.
