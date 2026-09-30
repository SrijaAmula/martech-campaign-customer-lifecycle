# User Acceptance Testing (UAT) Test Cases

## Project
**MarTech Campaign Optimization & CRM Funnel Transformation**

## Purpose

This document defines the User Acceptance Testing scenarios for validating the reporting solution against the approved business requirements, KPI definitions, dashboard requirements, and SQL benchmark results.

The objective of UAT is to confirm that the reporting solution produces the expected business results and supports the intended stakeholder decision-making process.

> Test execution status remains **Not Executed** until the reporting solution is formally tested.

---

## UAT Test Cases

| UAT ID | Test Scenario | Expected Result | Status |
|---|---|---|---|
| UAT-01 | Validate Total Marketing Spend | Total Spend should equal **631,811.35** | Not Executed |
| UAT-02 | Validate Total Revenue | Total Revenue should equal **2,008,436.18** | Not Executed |
| UAT-03 | Validate Overall ROAS | ROAS should equal **3.18** | Not Executed |
| UAT-04 | Validate Total Leads | Total Leads should equal **61,611** | Not Executed |
| UAT-05 | Validate Total Opportunities | Total Opportunities should equal **17,600** | Not Executed |
| UAT-06 | Validate Total Wins | Total Wins should equal **6,397** | Not Executed |
| UAT-07 | Validate Lead-to-Opportunity Conversion | Conversion should equal **28.57%** | Not Executed |
| UAT-08 | Validate Opportunity Win Rate | Win Rate should equal **36.35%** | Not Executed |
| UAT-09 | Validate Overall CPL | CPL should equal **10.25** | Not Executed |
| UAT-10 | Validate Overall CTR | CTR should equal **3.41%** | Not Executed |
| UAT-11 | Validate Email Channel ROAS | Email ROAS should equal **4.24** | Not Executed |
| UAT-12 | Validate Paid Search Channel ROAS | Paid Search ROAS should equal **2.50** | Not Executed |
| UAT-13 | Validate Campaign Review Logic | Campaigns with ROAS below 2.0 should be flagged as **Business Review Required** | Not Executed |
| UAT-14 | Validate Paid Social / New Product Review Flag | ROAS should equal **1.62** and the campaign should be flagged for review | Not Executed |
| UAT-15 | Validate Paid Search / Summer Sale Review Flag | ROAS should equal **1.63** and the campaign should be flagged for review | Not Executed |
| UAT-16 | Validate Organic / New Product Review Flag | ROAS should equal **1.81** and the campaign should be flagged for review | Not Executed |
| UAT-17 | Validate CRM Funnel Sequence | Funnel should display **Lead → Opportunity → Win → Revenue** | Not Executed |
| UAT-18 | Validate Funnel Volume | Funnel should display **61,611 Leads → 17,600 Opportunities → 6,397 Wins** | Not Executed |
| UAT-19 | Validate Monthly ROAS Trend | July should show the highest monthly ROAS at **5.21** | Not Executed |
| UAT-20 | Validate Zero-Denominator Handling | KPI calculations should return Blank / Not Applicable when the denominator is zero | Not Executed |

---

## UAT Validation Principles

The following rules apply during UAT execution:

- Results must be compared against approved SQL benchmark values.
- KPI calculations must follow the documented business rules.
- Campaigns with ROAS below 2.0 must be flagged for review only.
- No campaign should be automatically classified for termination.
- Funnel results must follow the approved Lead → Opportunity → Win → Revenue model.
- Zero-denominator calculations must not return invalid numeric values.
- Any variance between expected and actual results must be logged as a defect for investigation.

---

## Traceability

The UAT scenarios are intended to trace back to:

**Business Requirement → Business Rule → Functional Requirement → User Story → Acceptance Criteria → Dashboard Requirement → UAT Test Case**

This enables end-to-end requirements traceability across the project lifecycle.

---

## Execution Status

**Current UAT Status: Not Executed**

Test execution and Pass/Fail status should only be updated after the reporting solution has been formally validated.
