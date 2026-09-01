# Data Requirements & Mapping

## MarTech Campaign Optimization & CRM Funnel Transformation

---

## 1. Purpose

This document defines the business data requirements, logical source ownership,
field mappings and validation expectations required to support campaign and
CRM funnel reporting.

The document is intended to provide a common understanding between Business,
Marketing, CRM, Data/BI Engineering and QA stakeholders.

It describes the business meaning and expected treatment of data without
prescribing a specific ETL, database or reporting technology.

---

## 2. Data Context

The future-state reporting process requires information from two primary
business domains:

### Marketing Data

Marketing systems provide campaign activity and media-performance information,
including:

- Reporting date
- Marketing channel
- Campaign
- Spend
- Impressions
- Clicks

### CRM Data

CRM provides downstream funnel and commercial information, including:

- Lead
- Opportunity
- Win
- Revenue

The information must be associated at an agreed campaign and reporting level
before it is used for official campaign performance reporting.

---

## 3. Reporting Grain

For the initial portfolio release, the reporting dataset will use the
following logical grain:

**One record per Reporting Date + Marketing Channel + Campaign**

This means performance metrics within a row represent the aggregated
performance of a specific campaign, within a specific marketing channel,
for the relevant reporting date.

The portfolio's current synthetic dataset represents this simplified
consolidated reporting grain.

---

## 4. Source-of-Truth Ownership

| Data Area | Primary Business Source / Owner |
|---|---|
| Campaign Spend | Marketing |
| Impressions | Marketing |
| Clicks | Marketing |
| Marketing Channel | Marketing |
| Campaign Metadata | Marketing / governed campaign mapping |
| Lead | CRM / Sales Operations |
| Opportunity | CRM / Sales Operations |
| Win | CRM / Sales Operations |
| Revenue | CRM / Sales Operations |
| KPI Definitions | Approved business rules |
| Funnel Definitions | CRM / Sales Operations |

Source ownership identifies the authoritative business source for the
metric and does not necessarily define the physical technical architecture.

---

# 5. Data Mapping

| Target Field | Business Meaning | Logical Source | Source Attribute | Transformation / Business Rule | Required | Portfolio Status |
|---|---|---|---|---|---|---|
| reporting_date | Date associated with the aggregated campaign reporting record | Marketing / reporting process | date | Convert to approved reporting-date format | Yes | Available as `date` |
| channel | Marketing channel associated with campaign activity | Marketing | channel | Standardize to approved channel values | Yes | Available |
| campaign | Business-readable campaign name | Marketing | campaign | Trim and standardize according to approved naming rules | Yes | Available |
| campaign_id | Stable identifier used to associate campaign records across systems | Governed campaign mapping | Not currently available | Apply approved cross-system campaign identifier where available | Target requirement | Data gap |
| spend | Marketing expenditure associated with the campaign | Marketing | spend | Numeric value; must not be negative | Yes | Available |
| impressions | Number of times campaign content was displayed | Marketing | impressions | Whole-number count; must not be negative | Yes | Available |
| clicks | Recorded campaign clicks/interactions | Marketing | clicks | Whole-number count; must not be negative | Yes | Available |
| leads | Valid CRM Leads attributable to campaign activity | CRM | leads | Apply BRULE-02 Lead definition | Yes | Available |
| opportunities | Qualified Opportunities attributable to campaign activity | CRM | opportunities | Apply approved CRM Opportunity definition | Yes | Available |
| wins | Successfully closed/won Opportunities attributable to campaign activity | CRM | wins | Apply approved Win definition | Yes | Available |
| revenue | Revenue associated with attributable won Opportunities | CRM | revenue | Apply BRULE-04 Revenue Attribution rule | Yes | Available |

---

# 6. Derived KPI Requirements

The following values should be calculated from the governed reporting data
rather than treated as independent source-system values.

| KPI | Calculation |
|---|---|
| CTR | Clicks ÷ Impressions × 100 |
| CPL | Spend ÷ Leads |
| Lead-to-Opportunity Conversion Rate | Opportunities ÷ Leads × 100 |
| Opportunity Win Rate | Wins ÷ Opportunities × 100 |
| ROAS | Revenue ÷ Spend |

Where the denominator is zero, the result should follow BRULE-06 and return
blank / Not Applicable rather than an invalid value.

---

# 7. Data Validation Rules

| Rule ID | Validation Rule | Expected Handling |
|---|---|---|
| DQ-01 | Reporting Date must be present and valid | Reject or flag invalid record |
| DQ-02 | Marketing Channel must be present | Flag record if missing |
| DQ-03 | Campaign must be present | Flag record if missing |
| DQ-04 | Spend must not be negative | Flag as data-quality exception |
| DQ-05 | Impressions and Clicks must not be negative | Flag as data-quality exception |
| DQ-06 | Leads, Opportunities and Wins must not be negative | Flag as data-quality exception |
| DQ-07 | Opportunities should not exceed Leads under the approved MVP funnel definition | Flag for CRM reconciliation |
| DQ-08 | Wins should not exceed Opportunities under the approved MVP funnel definition | Flag for CRM reconciliation |
| DQ-09 | Revenue must not be negative for standard campaign performance reporting | Flag for business/data review |
| DQ-10 | Unmapped campaign records must not be automatically attributed to another campaign | Route to mapping exception process |
| DQ-11 | Duplicate records at the agreed reporting grain should be investigated before aggregation | Flag for data-quality review |

---

# 8. Campaign Mapping Requirement

A stable campaign identifier is the preferred mechanism for associating
Marketing activity with CRM funnel and Revenue information.

The current portfolio dataset does not contain a separate `campaign_id`.

For the initial synthetic MVP, the available campaign attribute is used as the
business-readable campaign key.

This represents a known data limitation.

In a production implementation, Marketing and CRM stakeholders should agree
a stable campaign identifier or governed mapping table to reduce dependence
on campaign-name matching.

Unmapped records must be treated according to BRULE-01 and shall not be
automatically assigned to another campaign.

---

# 9. Data Reconciliation Requirements

Marketing and CRM information should be reconciled before it is treated as
trusted campaign reporting data.

Reconciliation should consider:

- Campaign mapping
- Reporting period
- Funnel-stage definitions
- Missing CRM records
- Duplicate records
- Unmapped Revenue
- Unexpected funnel relationships

Where discrepancies cannot be resolved automatically, they should be routed
to the appropriate Marketing, CRM or Data owner for investigation.

Values should not be manually forced to match without an agreed business
resolution.

---

# 10. Data Quality Ownership

### Marketing Operations

Responsible for clarification of:

- Campaign metadata
- Marketing channel
- Spend
- Impressions
- Clicks

### CRM / Sales Operations

Responsible for clarification of:

- Lead
- Opportunity
- Win
- Revenue
- CRM funnel-stage definitions

### Data / BI Engineering

Responsible for implementing approved mapping, transformation and validation
logic within the technical solution.

### Business Analyst

Responsible for:

- Documenting business data definitions
- Clarifying source ownership
- Facilitating mapping discussions
- Documenting transformation and validation requirements
- Identifying unresolved data gaps
- Maintaining traceability to business and functional requirements
- Coordinating business clarification where source-system definitions conflict

---

# 11. Identified Data Gap

## DG-01 — Campaign Identifier

### Observation

The current synthetic reporting dataset contains a campaign name but does
not contain a stable cross-system `campaign_id`.

### Risk

Campaign-name matching may become unreliable if Marketing and CRM use
different naming conventions.

### BA Recommendation

Define a governed campaign identifier or campaign-mapping reference for a
production implementation.

For the current portfolio MVP, campaign name will be used as the simplified
reporting key and the limitation will remain explicitly documented.

---

# 12. Traceability

This document supports requirements relating to:

- BR-02 — KPI and funnel definitions
- BR-03 — Campaign-to-revenue visibility
- BR-04 — Campaign mapping
- BR-05 — Marketing and CRM reconciliation
- BR-06 — Data-quality validation
- BR-08 — Data and business-rule ownership

Relevant functional requirements include:

- FR-04 through FR-13
- FR-24 through FR-29

The validation rules documented here will later be used to define SQL
validation checks and UAT scenarios.
