# Dashboard Requirements & Wireframe

## MarTech Campaign Optimization & CRM Funnel Transformation

---

## 1. Purpose

This document defines the business and functional requirements for the
MVP campaign-performance and CRM-funnel dashboard.

The dashboard requirements are derived from:

- Approved Business Requirements
- Functional Requirements
- Stakeholder Business Questions
- KPI Definitions
- SQL Analysis
- Evidence-Based Business Insights

The purpose of the dashboard is to provide stakeholders with a governed,
interactive view of campaign and CRM funnel performance without requiring
manual consolidation or direct SQL analysis.

---

# 2. Primary Dashboard Users

## VP of Marketing

Primary needs:

- Overall Marketing Spend
- Revenue
- ROAS
- Channel performance
- Performance trends
- Identification of areas requiring investigation

Primary decision:

Determine where additional analysis or potential marketing optimization
may be required.

---

## Marketing Operations Manager

Primary needs:

- Channel comparison
- Campaign drill-down
- CTR
- CPL
- Revenue
- ROAS
- Identification of underperforming campaigns

Primary decision:

Determine which channels or campaigns should be prioritized for
performance review.

---

## CRM / Sales Operations Manager

Primary needs:

- Lead volume
- Opportunities
- Wins
- Lead-to-Opportunity Conversion
- Opportunity Win Rate
- Funnel comparison by channel and campaign

Primary decision:

Identify where downstream funnel progression requires investigation.

---

## Campaign Performance Analyst

Primary needs:

- Detailed campaign metrics
- Filters
- Period comparisons
- Channel drill-down
- Campaign review indicators

Primary decision:

Identify the campaigns and metrics that require deeper investigation.

---

# 3. Dashboard Objectives

The dashboard should enable stakeholders to:

1. Understand overall Marketing Spend, Revenue and ROAS.

2. Compare campaign performance across marketing channels.

3. Drill from channel-level performance into individual campaigns.

4. Analyse the Lead → Opportunity → Win funnel.

5. Compare acquisition efficiency with downstream business outcomes.

6. Identify campaigns below the approved ROAS review threshold.

7. Analyse campaign performance trends over time.

8. Avoid evaluating campaign success using a single KPI in isolation.

---

# 4. MVP Dashboard Structure

The MVP dashboard will contain three logical pages.

### Page 1 — Executive Overview

Purpose:

Provide leadership with a concise overview of overall campaign and
CRM funnel performance.

### Page 2 — Channel & Campaign Performance

Purpose:

Enable Marketing stakeholders to investigate channel and campaign
performance in greater detail.

### Page 3 — CRM Funnel & Trend Analysis

Purpose:

Enable Marketing and CRM stakeholders to evaluate funnel progression
and performance changes over time.

---

# 5. Page 1 — Executive Overview

## Business Questions Supported

- BQ-01 — Overall Marketing Return
- BQ-02 — Channel Performance
- BQ-07 — Funnel Drop-Off
- BQ-10 — Performance Over Time
- BQ-12 — Lead Volume vs Business Value

---

## KPI Cards

The page should display:

- Total Spend
- Total Revenue
- Overall ROAS
- Total Leads
- Total Opportunities
- Total Wins

For the approved MVP dataset, expected overall values are approximately:

| KPI | Expected Value |
|---|---:|
| Spend | 631,811.35 |
| Revenue | 2,008,436.18 |
| ROAS | 3.18 |
| Leads | 61,611 |
| Opportunities | 17,600 |
| Wins | 6,397 |

These values will later support dashboard validation and UAT.

---

## Visual Requirements

### DR-01 — Channel ROAS Comparison

The dashboard shall display ROAS by marketing channel.

Purpose:

Allow stakeholders to identify relatively strong and weak channels.

Related:

- BQ-02
- FR-16
- US-03

---

### DR-02 — Revenue by Channel

The dashboard shall display Revenue contribution by marketing channel.

Purpose:

Show which channels contribute the greatest Revenue.

Related:

- BQ-02
- BQ-12
- FR-20

---

### DR-03 — CRM Funnel Overview

The dashboard shall display:

**Leads → Opportunities → Wins**

Purpose:

Provide leadership with visibility into downstream campaign progression.

Related:

- BQ-07
- FR-19
- US-04

---

### DR-04 — Monthly Spend and Revenue Trend

The dashboard shall show Spend and Revenue across the supported
reporting period.

Purpose:

Allow stakeholders to identify changes in performance over time.

Related:

- BQ-10
- FR-18

---

## Page 1 Wireframe

```text
+------------------------------------------------------------------+
|       CAMPAIGN & CRM PERFORMANCE — EXECUTIVE OVERVIEW             |
+------------------------------------------------------------------+
| Date Filter                     | Channel Filter                  |
+------------------------------------------------------------------+
| Total Spend | Revenue | ROAS | Leads | Opportunities | Wins      |
+------------------------------------------------------------------+
|                                                                  |
|       ROAS BY CHANNEL            |     REVENUE BY CHANNEL         |
|                                                                  |
+----------------------------------+-------------------------------+
|                                                                  |
|        CRM FUNNEL                |   MONTHLY SPEND & REVENUE     |
|                                                                  |
| Leads                            |                               |
|   ↓                              |                               |
| Opportunities                    |                               |
|   ↓                              |                               |
| Wins                             |                               |
|                                                                  |
+------------------------------------------------------------------+
```

---

# 6. Page 2 — Channel & Campaign Performance

## Business Questions Supported

- BQ-02 — Channel Performance
- BQ-03 — Highest Performing Campaigns
- BQ-04 — Underperforming Campaigns
- BQ-08 — Cost per Lead
- BQ-09 — Engagement Performance
- BQ-12 — Lead Volume vs Business Value

---

## Filters

Business users should be able to filter by:

- Reporting Date
- Marketing Channel
- Campaign

Filters should affect relevant visuals consistently.

---

## DR-05 — Campaign Performance Table

The dashboard shall provide a detailed campaign-level view containing:

- Channel
- Campaign
- Spend
- Impressions
- Clicks
- CTR
- Leads
- CPL
- Opportunities
- Lead-to-Opportunity Conversion Rate
- Wins
- Opportunity Win Rate
- Revenue
- ROAS

Purpose:

Allow users to evaluate acquisition and downstream performance together.

---

## DR-06 — Underperforming Campaign Indicator

Campaign/channel combinations with:

**ROAS < 2.0**

shall be clearly identifiable as requiring business review.

The indicator shall not state that the campaign should automatically
be stopped.

Related:

- BRULE-08
- BQ-04
- FR-21
- FR-22
- US-06

---

## DR-07 — Lead Volume vs Revenue / ROAS

The dashboard should enable users to compare Lead volume with Revenue
and ROAS by channel or campaign.

Purpose:

Prevent high Lead volume from being interpreted automatically as
high business value.

Related:

- BQ-12

---

## DR-08 — Campaign Ranking

Business users should be able to identify relatively strong and weak
campaigns using Revenue and ROAS.

Purpose:

Support campaign-level investigation.

Related:

- BQ-03
- BQ-04

---

## Page 2 Wireframe

```text
+------------------------------------------------------------------+
|               CHANNEL & CAMPAIGN PERFORMANCE                     |
+------------------------------------------------------------------+
| Date Filter      | Channel Filter      | Campaign Filter         |
+------------------------------------------------------------------+
|                                                                  |
|             CHANNEL PERFORMANCE COMPARISON                       |
|                                                                  |
+------------------------------------------------------------------+
|                                                                  |
|             LEAD VOLUME vs REVENUE / ROAS                        |
|                                                                  |
+------------------------------------------------------------------+
| CAMPAIGN DETAIL TABLE                                            |
|                                                                  |
| Channel | Campaign | Spend | Leads | Opps | Wins | Revenue |ROAS |
| ---------------------------------------------------------------- |
| ...                                                              |
|                                                                  |
+------------------------------------------------------------------+
| Campaigns with ROAS < 2.0 → Business Review Required             |
+------------------------------------------------------------------+
```

---

# 7. Page 3 — CRM Funnel & Trend Analysis

## Business Questions Supported

- BQ-05 — Lead-to-Opportunity Conversion
- BQ-06 — Opportunity-to-Win Performance
- BQ-07 — Funnel Drop-Off
- BQ-10 — Performance Over Time
- BQ-11 — Channel Trend Comparison

---

## DR-09 — Funnel Conversion

The dashboard shall display:

- Leads
- Opportunities
- Wins
- Lead-to-Opportunity Conversion Rate
- Opportunity Win Rate

Purpose:

Allow CRM and Marketing stakeholders to understand funnel progression.

---

## DR-10 — Funnel Performance by Channel

Users shall be able to compare funnel conversion across marketing channels.

Purpose:

Identify channels where Lead or Opportunity progression differs.

Related:

- BQ-05
- BQ-06
- BQ-07

---

## DR-11 — Monthly ROAS Trend

The dashboard shall show ROAS across the supported reporting period.

Purpose:

Identify changes in marketing efficiency over time.

Related:

- BQ-10

---

## DR-12 — Channel Trend Analysis

Users shall be able to compare channel performance over time.

At minimum, the analysis should support:

- Spend
- Revenue
- ROAS

Related:

- BQ-11
- FR-18

---

## Page 3 Wireframe

```text
+------------------------------------------------------------------+
|                 CRM FUNNEL & TREND ANALYSIS                      |
+------------------------------------------------------------------+
| Date Filter                 | Channel Filter                     |
+------------------------------------------------------------------+
|                                                                  |
|        FUNNEL PERFORMANCE       |   CONVERSION BY CHANNEL         |
|                                                                  |
| Leads                            |                                |
|   ↓                              |                                |
| Opportunities                    |                                |
|   ↓                              |                                |
| Wins                             |                                |
|                                                                  |
+----------------------------------+-------------------------------+
|                                                                  |
|              MONTHLY ROAS TREND                                  |
|                                                                  |
+------------------------------------------------------------------+
|                                                                  |
|              CHANNEL PERFORMANCE OVER TIME                       |
|                                                                  |
+------------------------------------------------------------------+
```

---

# 8. KPI Calculation Requirements

The dashboard shall use the approved governed formulas.

### CTR

Clicks ÷ Impressions × 100

### CPL

Spend ÷ Leads

### Lead-to-Opportunity Conversion Rate

Opportunities ÷ Leads × 100

### Opportunity Win Rate

Wins ÷ Opportunities × 100

### ROAS

Revenue ÷ Spend

Where the denominator equals zero, the KPI should return blank /
Not Applicable in accordance with BRULE-06.

---

# 9. Interaction Requirements

## DR-13 — Filtering

Filters should update all relevant visuals on the applicable dashboard page.

---

## DR-14 — Consistent KPI Definitions

The same governed KPI definition must be used wherever the metric appears.

For example, ROAS displayed on Page 1 must use the same approved logic
as ROAS displayed on Page 2.

---

## DR-15 — Context Preservation

When a user filters by Channel, Campaign or Reporting Date, the displayed
KPIs should reflect the selected context.

---

## DR-16 — Business Review Context

Campaign review indicators should remain accompanied by supporting metrics.

The dashboard should not reduce an underperformance decision to a single
red/green status without allowing users to inspect Spend, Revenue,
funnel performance and ROAS.

---

# 10. Design Principles

The dashboard should:

- Prioritize business decisions over decorative visuals
- Avoid unnecessary charts
- Present executive metrics clearly
- Allow detailed analysis without overwhelming leadership users
- Use consistent KPI terminology
- Preserve traceability to approved requirements
- Avoid implying causation where the underlying dataset only shows
  performance association
- Clearly identify that the portfolio uses synthetic data

---

# 11. MVP Exclusions

The current dashboard will not include:

- Customer segmentation
- Customer churn
- Customer lifetime value
- Predictive analytics
- Lead scoring
- Individual customer journeys
- Automated campaign budget modification
- Real-time production-system monitoring

These capabilities are outside the approved MVP scope or unsupported
by the current dataset.

---

# 12. Data Quality / Exception Reporting

Detailed operational exception-management reporting is not included as
a separate MVP dashboard page because the current synthetic dataset has
already been prepared as a validated reporting dataset.

Data-quality controls remain represented through:

- Data requirements
- SQL validation
- Business rules
- Process design
- Future integration requirements

A production implementation could include dedicated operational
exception-monitoring functionality where required.

---

# 13. Dashboard Validation

The dashboard should later be validated against:

- Approved KPI definitions
- SQL analysis results
- User-story acceptance criteria
- Dashboard requirements
- UAT scenarios

The SQL output will act as an independent validation reference for key
dashboard totals and calculations.

---

# 14. Traceability

| Dashboard Area | Related Business Questions / Requirements |
|---|---|
| Executive KPI Cards | BQ-01, BR-03 |
| Channel Performance | BQ-02, FR-16, US-03 |
| Campaign Performance | BQ-03, FR-17, US-05 |
| Underperforming Campaigns | BQ-04, BRULE-08, US-06 |
| Funnel Conversion | BQ-05, BQ-06, BQ-07, FR-19, US-04 |
| CPL / CTR Analysis | BQ-08, BQ-09 |
| Performance Trends | BQ-10, FR-18 |
| Channel Trends | BQ-11 |
| Lead Volume vs Business Value | BQ-12 |

---

# 15. BA Role

The Business Analyst supported dashboard design by:

- Translating stakeholder decisions into reporting requirements
- Prioritizing business questions before visual selection
- Defining required KPIs and dimensions
- Ensuring dashboard metrics use approved business rules
- Defining filtering and drill-down expectations
- Connecting dashboard requirements to functional requirements and
  user stories
- Providing expected SQL results for validation
- Preventing unsupported customer-lifecycle functionality from entering scope
- Working collaboratively with Data/BI stakeholders on the reporting design

The detailed Power BI implementation and visual configuration should be
developed collaboratively with the BI delivery role.
