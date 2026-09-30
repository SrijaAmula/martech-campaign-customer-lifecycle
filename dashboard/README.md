# Power BI Dashboard

## Project
**MarTech Campaign Optimization & CRM Funnel Transformation**

This dashboard represents the reporting layer designed for the project’s approved synthetic Marketing and CRM dataset.

The dashboard was designed to help stakeholders understand campaign performance, CRM funnel conversion, channel effectiveness, and campaigns that require further business review.

The reporting solution is structured across three dashboard pages.

---

## Page 1 – Executive Overview

![Executive Overview](01_Executive_Overview.png)

### Purpose

The Executive Overview provides senior stakeholders with a high-level summary of overall campaign and CRM funnel performance.

### Key Metrics

- Total Marketing Spend
- Total Revenue
- ROAS
- Total Leads
- Total Opportunities
- Total Wins

### Key Visuals

- ROAS by Channel
- Revenue by Channel
- Monthly Revenue Trend
- CRM Funnel Overview

### Validated Benchmark Results

| KPI | Result |
|---|---:|
| Total Spend | 631,811.35 |
| Total Revenue | 2,008,436.18 |
| ROAS | 3.18 |
| Leads | 61,611 |
| Opportunities | 17,600 |
| Wins | 6,397 |

---

## Page 2 – Channel & Campaign Performance

![Channel & Campaign Performance](02_Channel_Campaign_Performance.png)

### Purpose

This page allows business users to compare marketing channels and individual campaign performance.

The analysis supports investigation of whether high lead volume is also translating into meaningful revenue and ROAS.

### Key Analysis

- Spend vs Revenue by Channel
- Channel ROAS comparison
- Strong-performing campaign combinations
- Campaigns requiring business review
- Campaign performance drill-down

### Campaign Review Rule

For this portfolio MVP:

**ROAS < 2.0 → Business Review Required**

This rule identifies campaigns for investigation. It does not automatically recommend stopping a campaign.

The following campaign/channel combinations currently fall below the review threshold:

| Channel | Campaign | ROAS |
|---|---|---:|
| Paid Social | New Product | 1.62 |
| Paid Search | Summer Sale | 1.63 |
| Organic | New Product | 1.81 |

---

## Page 3 – CRM Funnel & Trend Analysis

![CRM Funnel & Trend Analysis](03_CRM_Funnel_Trend_Analysis.png)

### Purpose

This page focuses on how marketing-generated leads progress through the CRM funnel.

### Funnel

**Lead → Opportunity → Win → Revenue**

### Key Metrics

| KPI | Result |
|---|---:|
| Lead-to-Opportunity Conversion | 28.57% |
| Opportunity Win Rate | 36.35% |
| CPL | 10.25 |
| CTR | 3.41% |

### Key Analysis

- Funnel volume
- Conversion performance
- Monthly ROAS trend
- Channel ROAS comparison
- Funnel drop-off investigation

The largest relative funnel drop occurs between **Lead and Opportunity**, making this an important area for business investigation.

---

## KPI Calculation Layer

The dashboard calculation logic is documented in:

[`POWER_BI_DASHBOARD_BUILD.md`](POWER_BI_DASHBOARD_BUILD.md)

The specification includes:

- Total Spend
- Total Revenue
- Total Leads
- Total Opportunities
- Total Wins
- ROAS
- CTR
- CPL
- Lead-to-Opportunity Conversion
- Opportunity Win Rate
- Campaign Review Status

---

## Validation Approach

The reporting metrics were designed to align with the project's SQL analysis and governed KPI definitions.

The expected reporting outputs are compared against the validated SQL benchmark results before being treated as reliable for business reporting.

This provides traceability between:

**Business Requirements → Business Rules → Data → SQL Validation → Dashboard Reporting**

---

## Portfolio Context

This project uses synthetic data and is intended to demonstrate Business Analyst / Business Systems Analyst capabilities including:

- KPI definition
- Reporting requirements
- Data analysis
- CRM funnel analysis
- SQL validation
- Dashboard requirements
- Business rules
- Requirements traceability
- Business insight generation

The dashboard is one presentation layer within the broader end-to-end Business Analysis solution.
