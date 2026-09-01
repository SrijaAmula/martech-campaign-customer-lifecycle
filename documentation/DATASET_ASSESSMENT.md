# Dataset Sufficiency Assessment

## MarTech Campaign Optimization & CRM Funnel Transformation

---

## 1. Purpose

This document assesses whether the current synthetic dataset contains
sufficient information to support the approved MVP business and
functional requirements.

The assessment also identifies known data limitations that should be
considered during analysis, reporting and future solution design.

---

## 2. Dataset Overview

The current portfolio dataset contains aggregated campaign-performance
information at the following logical grain:

**Reporting Date + Marketing Channel + Campaign**

Available fields include:

- date
- channel
- campaign
- spend
- impressions
- clicks
- leads
- opportunities
- wins
- revenue

The dataset represents a simplified consolidated reporting layer created
for the portfolio case study.

It should not be interpreted as a raw export from individual Marketing
and CRM production systems.

---

## 3. Supported Business Capabilities

The current dataset is sufficient to support the initial MVP capabilities
for campaign and CRM funnel performance reporting.

### Campaign Performance

The dataset supports analysis of:

- Marketing Spend
- Impressions
- Clicks
- Leads
- Opportunities
- Wins
- Revenue

### KPI Analysis

The available data supports calculation of:

- CTR
- CPL
- Lead-to-Opportunity Conversion Rate
- Opportunity Win Rate
- ROAS

### Reporting Dimensions

Performance can be analysed by:

- Reporting Date
- Marketing Channel
- Campaign

### Funnel Reporting

The dataset supports the simplified funnel:

**Lead → Opportunity → Win**

This allows the MVP reporting solution to evaluate downstream campaign
performance beyond marketing engagement metrics.

---

## 4. Dataset-to-Requirement Assessment

| Requirement Area | Data Available? | Assessment |
|---|---|---|
| Cross-channel campaign reporting | Yes | Supported |
| Spend, Impressions and Click reporting | Yes | Supported |
| Lead → Opportunity → Win funnel | Yes | Supported |
| Revenue visibility | Yes | Supported |
| CTR calculation | Yes | Supported |
| CPL calculation | Yes | Supported |
| Funnel conversion calculation | Yes | Supported |
| ROAS calculation | Yes | Supported |
| Reporting by Date | Yes | Supported |
| Reporting by Channel | Yes | Supported |
| Reporting by Campaign | Yes | Supported |
| Stable cross-system Campaign ID | No | Known limitation |
| Raw Marketing-to-CRM reconciliation | No | Not represented in consolidated dataset |
| Customer-level segmentation | No | Outside current MVP data |
| Customer retention / churn analysis | No | Outside current MVP data |
| Customer lifetime value | No | Outside current MVP data |

---

## 5. Known Data Limitations

### DL-01 — No Stable Campaign Identifier

The dataset contains a campaign name but does not contain a separate
stable `campaign_id`.

This limits the ability to demonstrate true cross-system campaign mapping.

For the portfolio MVP, campaign name will continue to act as the simplified
reporting key.

A governed campaign identifier or mapping table is recommended for a
production implementation.

---

### DL-02 — Consolidated Rather Than Source-Level Data

Marketing and CRM measures are already represented within the same
synthetic reporting dataset.

Therefore, the dataset can demonstrate campaign and funnel reporting,
but it cannot independently demonstrate the complete physical integration
or reconciliation process between separate Marketing and CRM systems.

The integration process is represented through business requirements,
mapping rules, process design and solution documentation.

---

### DL-03 — No Customer-Level Identifier

The dataset does not contain a `customer_id` or equivalent customer-level
identifier.

As a result, the current MVP cannot support individual customer journeys,
customer segmentation, retention, churn or lifetime-value analysis.

The current scope should therefore be interpreted primarily as
campaign-performance and acquisition-funnel analysis.

---

### DL-04 — Aggregated Reporting Grain

The dataset contains aggregated campaign metrics rather than individual
Lead, Opportunity or customer records.

This is appropriate for the initial performance-reporting MVP but limits
record-level CRM analysis.

---

## 6. BA Assessment

The current dataset is considered sufficient for the initial MVP focused on:

- Cross-channel campaign performance
- CRM funnel visibility
- KPI analysis
- Revenue and ROAS reporting
- Campaign-performance comparison
- Identification of underperforming campaigns

The identified limitations do not prevent delivery of the MVP.

However, they should remain explicitly documented so that the portfolio
does not imply functionality or data integration that the available
dataset cannot demonstrate.

---

## 7. Recommendation

Proceed with the current synthetic dataset for the MVP campaign and
CRM funnel reporting solution.

Do not expand the dataset solely to make the project appear more complex.

Future data enhancements should only be introduced where they support
a clearly defined business requirement.

Potential future enhancements may include:

- Governed campaign identifiers
- Separate Marketing and CRM source datasets
- Campaign-mapping reference data
- Record-level Lead and Opportunity information

Customer-level lifecycle data should only be introduced if customer
lifecycle analysis becomes an approved project scope.

---

## 8. Decision

**Dataset Readiness Decision: APPROVED FOR MVP**

The current dataset provides sufficient information to proceed with
campaign-performance analysis and reporting, subject to the documented
data limitations.

---

## 9. BA Role

The Business Analyst assessed available data against approved business
and functional requirements by:

- Comparing required reporting metrics with available fields
- Identifying missing data elements
- Documenting data limitations and risks
- Distinguishing MVP requirements from future enhancements
- Confirming which requirements can be supported by the available data
- Preventing unsupported functionality from being represented as delivered
- Communicating data gaps to business and technical stakeholders
