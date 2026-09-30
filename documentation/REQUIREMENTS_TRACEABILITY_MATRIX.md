# Requirements Traceability Matrix

## Project
**MarTech Campaign Optimization & CRM Funnel Transformation**

## Purpose

This Requirements Traceability Matrix (RTM) provides end-to-end traceability across the project lifecycle.

It connects identified business gaps to business requirements, business rules, functional requirements, Agile user stories, acceptance criteria, dashboard requirements, and UAT test cases.

The objective is to ensure that every important business need can be traced through design, implementation expectations, and validation.

---

# Traceability Matrix

| Gap ID | Business Requirement | Business Rule | Functional Requirement | User Story | Acceptance Criteria / Expected Behaviour | Dashboard / Reporting Requirement | UAT Test Case | Current Status |
|---|---|---|---|---|---|---|---|---|
| GAP-01 Manual consolidation | BR-01 Consolidated reporting | Governed reporting dataset required | FR-01 to FR-04 Data acquisition & consolidation | US-01 Consolidated Campaign Performance | Marketing and CRM metrics should be available in a consistent reporting view | Executive Overview | UAT-01 to UAT-06 | UAT Not Executed |
| GAP-02 KPI inconsistency | BR-02 Standardized KPI definitions | BRULE KPI formulas | FR-10 to FR-14 KPI processing | US-08 Governed KPI Definitions | KPI calculations must follow approved business rules | KPI cards and dashboard measures | UAT-03, UAT-07, UAT-08, UAT-09, UAT-10 | UAT Not Executed |
| GAP-03 Limited campaign-to-CRM visibility | BR-03 Campaign and CRM funnel visibility | Lead → Opportunity → Win → Revenue | FR-15 to FR-18 Funnel reporting | US-04 CRM Funnel Visibility | Users should see progression from Leads through Wins and Revenue | CRM Funnel & Trend Analysis | UAT-17, UAT-18 | UAT Not Executed |
| GAP-04 Funnel reconciliation issues | BR-04 Reconciled funnel metrics | Opportunities must not exceed Leads; Wins must not exceed Opportunities | FR-19 to FR-21 Reconciliation controls | US-04 CRM Funnel Visibility | Funnel values should comply with approved hierarchy and validation rules | CRM Funnel reporting | UAT-04, UAT-05, UAT-06, UAT-18 | UAT Not Executed |
| GAP-05 Campaign identifier / mapping issues | BR-05 Governed campaign mapping | Unmapped records must be flagged as exceptions | FR-05 to FR-09 Mapping & standardization | US-02 Campaign-to-CRM Mapping | Unmapped campaigns must not be automatically assigned | Campaign analysis and exception handling | UAT design coverage – execution pending | UAT Not Executed |
| GAP-06 Data-quality exceptions | BR-06 Data-quality controls | DQ rules and exception handling | FR-24 to FR-27 Data-quality management | US-07 Data Quality Exception Management | Invalid or inconsistent records should be identified for investigation | Reporting validation layer | UAT-20 and related DQ validation | UAT Not Executed |
| GAP-07 Reporting timeliness | BR-07 Improved reporting availability | Governed repeatable reporting process | FR-22 to FR-23 Reporting | US-01 Consolidated Campaign Performance | Stakeholders should have access to consistent campaign and funnel information | Executive Overview and reporting pages | UAT-01 to UAT-19 | UAT Not Executed |
| GAP-08 Ownership and governance | BR-08 Reporting governance | Approved KPI ownership and traceability | FR-28 to FR-29 Governance | US-08 Governed KPI Definitions | KPI definitions, ownership, and reporting rules should be documented and controlled | Dashboard documentation and KPI specification | UAT scenarios validate governed calculations | UAT Not Executed |

---

# KPI Traceability

| KPI | Business Rule | Reporting Measure | UAT Test Case | Expected Result |
|---|---|---|---|---:|
| Total Spend | Sum approved Marketing Spend | Total Spend | UAT-01 | 631,811.35 |
| Total Revenue | Sum attributable Revenue | Total Revenue | UAT-02 | 2,008,436.18 |
| ROAS | Revenue / Spend | ROAS | UAT-03 | 3.18 |
| Total Leads | Sum valid attributable Leads | Total Leads | UAT-04 | 61,611 |
| Total Opportunities | Sum qualified Opportunities | Total Opportunities | UAT-05 | 17,600 |
| Total Wins | Sum closed/won Opportunities | Total Wins | UAT-06 | 6,397 |
| Lead-to-Opportunity Conversion | Opportunities / Leads | Lead-to-Opportunity Conversion % | UAT-07 | 28.57% |
| Opportunity Win Rate | Wins / Opportunities | Opportunity Win Rate % | UAT-08 | 36.35% |
| CPL | Spend / Leads | CPL | UAT-09 | 10.25 |
| CTR | Clicks / Impressions | CTR | UAT-10 | 3.41% |

---

# Campaign Review Rule Traceability

## Business Rule

**ROAS < 2.0 → Business Review Required**

This rule identifies campaigns that require further investigation.

It does not automatically recommend stopping or reducing campaign activity.

| Campaign / Channel | ROAS | UAT Test | Expected Result |
|---|---:|---|---|
| Paid Social / New Product | 1.62 | UAT-14 | Business Review Required |
| Paid Search / Summer Sale | 1.63 | UAT-15 | Business Review Required |
| Organic / New Product | 1.81 | UAT-16 | Business Review Required |

---

# Funnel Traceability

## Approved Funnel

**Lead → Opportunity → Win → Revenue**

| Funnel Stage | Expected Value | UAT Test |
|---|---:|---|
| Leads | 61,611 | UAT-04 / UAT-18 |
| Opportunities | 17,600 | UAT-05 / UAT-18 |
| Wins | 6,397 | UAT-06 / UAT-18 |
| Lead-to-Opportunity Conversion | 28.57% | UAT-07 |
| Opportunity Win Rate | 36.35% | UAT-08 |

The largest relative funnel drop occurs between Lead and Opportunity.

This is treated as an investigation area rather than automatically classified as poor performance.

---

# Reporting Traceability

| Dashboard Page | Business Need | Related User Stories | Related UAT |
|---|---|---|---|
| Executive Overview | High-level campaign and funnel performance visibility | US-01, US-03, US-04 | UAT-01 to UAT-10 |
| Channel & Campaign Performance | Compare channels, campaigns, ROAS, Spend and Revenue | US-03, US-05, US-06 | UAT-11 to UAT-16 |
| CRM Funnel & Trend Analysis | Understand funnel conversion and time-based performance | US-04, US-05 | UAT-17 to UAT-19 |

---

# Data Quality Traceability

The project includes data-quality requirements covering:

- Duplicate reporting-grain records
- Negative values
- Funnel hierarchy violations
- Missing mappings
- Reconciliation differences
- Invalid denominator conditions

These controls support the approved reporting grain:

**Reporting Date + Marketing Channel + Campaign**

A stable `campaign_id` is not available in the current MVP dataset.

This remains a documented data gap.

---

# Integration Traceability

The logical integration requirements documented in:

`api/INTEGRATION_REQUIREMENTS.md`

support the movement and reconciliation of Marketing and CRM information required by the reporting solution.

The portfolio demonstrates integration requirements and business/data mapping.

It does not claim that a live production Marketing-to-CRM API integration was implemented.

---

# UAT Status Summary

| Status | Count |
|---|---:|
| Passed | 0 |
| Failed | 0 |
| Not Executed | 20 |

**Current UAT Status: Not Executed**

Pass/Fail status will only be updated after formal execution of the test cases.

---

# Defect Status

**Current Defects: 0**

No defects have been recorded because formal UAT execution has not yet been completed.

Any future defect must be linked back to:

**UAT Test Case → Requirement / Story → Business Rule**

---

# Traceability Summary

The project now demonstrates traceability across:

**Business Problem → Gap → Business Requirement → Business Rule → Functional Requirement → User Story → Acceptance Criteria → Data / Reporting Requirement → UAT Test Case**

This RTM should be updated again only if:

- UAT is executed
- A requirement changes
- A defect results in a requirement clarification
- A new approved scope item is introduced
- Final business sign-off is completed
