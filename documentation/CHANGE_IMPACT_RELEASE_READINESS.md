# Change Impact & Release Readiness

## Project
**MarTech Campaign Optimization & CRM Funnel Transformation**

## Purpose

This document assesses the business impact of the proposed reporting and CRM funnel transformation solution and identifies the activities required before the solution can be considered ready for release.

The objective is to ensure that stakeholders, business processes, reporting practices, data governance, and operational ownership are prepared for the future-state solution.

---

# 1. Change Summary

The proposed solution introduces a governed reporting approach that consolidates Marketing and CRM funnel information into a consistent reporting structure.

The future-state process is intended to improve visibility across:

**Lead → Opportunity → Win → Revenue**

The solution introduces:

- Standardized KPI definitions
- Governed reporting logic
- Campaign and CRM funnel visibility
- Data-quality validation
- Exception handling
- Channel and campaign performance analysis
- Reporting dashboards
- Defined ownership and traceability
- Business review logic for underperforming campaigns

The solution does not replace the CRM or Marketing platforms.

---

# 2. Stakeholder Impact

## Marketing Team

### Current State
Marketing performance is evaluated using fragmented reports and manually consolidated data.

### Future-State Impact
Marketing users will have standardized campaign performance metrics including:

- Spend
- Impressions
- Clicks
- Leads
- CPL
- CTR
- Revenue
- ROAS

### Change Required
Marketing stakeholders will need to use the governed KPI definitions instead of independently calculated spreadsheet metrics.

---

## CRM / Sales Operations

### Current State
CRM funnel performance is not consistently connected with upstream campaign reporting.

### Future-State Impact
CRM users will have visibility into:

- Leads
- Opportunities
- Wins
- Revenue
- Lead-to-Opportunity Conversion
- Opportunity Win Rate

### Change Required
CRM and Sales Operations teams will need to follow agreed funnel definitions and support reconciliation of CRM metrics.

---

## Campaign Analysts

### Future-State Impact

Campaign analysts will be able to compare campaign and channel performance using common business rules.

Campaigns with:

**ROAS < 2.0**

will be identified as:

**Business Review Required**

This does not mean that the campaign should automatically be stopped.

The analyst should investigate the underlying performance before recommending action.

---

## Data / BI Team

### Future-State Impact

The Data/BI function will support:

- Data consolidation
- Field mapping
- Data-quality validation
- KPI calculation
- Reporting dataset preparation
- Exception management
- Dashboard implementation and maintenance

Technical implementation decisions remain collaborative between Business, Data, BI, Engineering, and Security stakeholders.

---

## Business Analyst

The BA supports the transition by:

- Maintaining requirements traceability
- Clarifying business rules
- Supporting KPI governance
- Coordinating stakeholder validation
- Supporting UAT
- Managing requirement clarifications
- Supporting defect triage
- Assessing business impacts
- Supporting release readiness and business sign-off

---

# 3. Process Impact

## Current Process

The AS-IS process includes:

- Manual data exports
- Spreadsheet consolidation
- Manual cleansing
- Manual reconciliation
- Inconsistent KPI calculations
- Periodic reporting
- Manual investigation of discrepancies

## Future Process

The TO-BE process introduces:

1. Data acquisition
2. Standardization
3. Campaign mapping
4. Data-quality validation
5. CRM reconciliation
6. KPI processing
7. Governed reporting dataset
8. Dashboard reporting
9. Exception investigation
10. Business review and decision-making

### Expected Business Impact

The future-state process is intended to reduce dependency on manual reporting and improve consistency, traceability, and visibility across Marketing and CRM reporting.

---

# 4. Data & Reporting Impact

The solution introduces governed definitions for:

- CTR
- CPL
- Lead-to-Opportunity Conversion
- Opportunity Win Rate
- ROAS

All reporting outputs should use the approved calculation logic.

Known data limitations must remain visible.

The current MVP does not contain a stable `campaign_id`.

For the MVP, campaign name is used as the simplified reporting key.

In a production environment, a governed campaign identifier or campaign mapping reference would be preferred.

---

# 5. Data Quality Impact

The reporting process requires validation before data is treated as suitable for business reporting.

Key validation areas include:

- Duplicate reporting-grain records
- Negative values
- Opportunities greater than Leads
- Wins greater than Opportunities
- Missing campaign mapping
- Invalid denominator conditions
- Reconciliation differences

Records that cannot be reliably mapped should be treated as exceptions instead of being automatically assigned.

---

# 6. User & Training Impact

Users should understand:

- KPI definitions
- CRM funnel definitions
- Dashboard navigation
- Available filters
- Campaign review rules
- How exceptions are handled
- Difference between an observation and a recommendation

### Recommended Training Topics

- Dashboard overview
- KPI definitions
- Campaign performance analysis
- CRM funnel interpretation
- ROAS review logic
- Data-quality exception handling
- Escalation and ownership process

---

# 7. Communication Requirements

Before release, stakeholders should receive communication covering:

- Purpose of the reporting solution
- Scope of the MVP
- KPI definitions
- Reporting ownership
- Dashboard availability
- Known limitations
- Support and escalation process
- UAT and business sign-off status

Communication should clearly state that the current MVP covers:

**Campaign Performance + CRM Lead → Opportunity → Win → Revenue**

The MVP does not include:

- Customer segmentation
- Customer retention
- Customer churn
- Customer lifetime value
- Predictive lead scoring
- Automated budget optimization

---

# 8. Release Readiness Checklist

| Readiness Area | Requirement | Current Status |
|---|---|---|
| Business Requirements | BRD completed and reviewed | Complete |
| Functional Requirements | FRD completed | Complete |
| Business Rules | KPI and funnel rules documented | Complete |
| User Stories | Agile backlog completed | Complete |
| Data Requirements | Mapping and data-quality requirements documented | Complete |
| SQL Validation | Validation and analytical queries completed | Complete |
| Dashboard Requirements | Dashboard requirements and wireframes completed | Complete |
| Dashboard Evidence | Dashboard reporting views documented | Complete |
| Integration Requirements | Logical integration requirements documented | Complete |
| UAT Test Design | UAT scenarios prepared | Complete |
| UAT Execution | Formal business testing | Not Executed |
| Defect Resolution | Required only if UAT identifies defects | Not Started |
| Final Business Sign-Off | Required after successful UAT | Pending |
| RTM Finalization | Update with final UAT status | Pending |
| Release Communication | Stakeholder communication | Pending |

---

# 9. Release Dependencies

The solution should not be considered fully released until:

- UAT is executed
- Critical and high-priority defects are resolved or formally accepted
- Required retesting is completed
- Business stakeholders approve the reporting results
- Final traceability is updated
- Release communication is completed

---

# 10. Go-Live / Release Decision

## Current Status

**Not Ready for Formal Production Release**

### Reason

The requirements, business rules, SQL validation, dashboard design, integration requirements, and UAT test design have been completed.

However:

- UAT has not yet been formally executed
- No final business sign-off exists
- Defect/retest activities have not been required or completed
- Final release approval has not been issued

The solution should therefore remain in a **UAT / Release Preparation** state until formal validation is completed.

---

# 11. BA Release Readiness Role

The Business Analyst supports release readiness by confirming:

- Requirements are traceable
- Business rules are understood
- UAT scenarios cover required functionality
- Business stakeholders understand the solution
- Known limitations are documented
- Open issues are visible
- Business sign-off criteria are clear

The BA facilitates readiness and business validation but does not independently approve technical production deployment.
