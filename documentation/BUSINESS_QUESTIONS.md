# Stakeholder Business Questions

## MarTech Campaign Optimization & CRM Funnel Transformation

---

## 1. Purpose

This document defines the key business questions that the campaign and
CRM funnel reporting solution should help stakeholders answer.

The questions were derived from the approved business requirements,
stakeholder needs, data availability and identified business gaps.

They will be used to guide:

- SQL business analysis
- KPI interpretation
- Dashboard design
- Business insight generation
- UAT scenarios
- Stakeholder decision-making

The purpose of the analysis is not simply to calculate metrics.

Each analysis should help answer a defined business question and support
a relevant stakeholder decision.

---

# 2. Executive Business Questions

## BQ-01 — Overall Marketing Return

### Stakeholder
VP of Marketing

### Business Question
How much Marketing Spend is generating Revenue, and what is the overall ROAS?

### Required Measures
- Spend
- Revenue
- ROAS

### Business Decision Supported
Assess whether marketing activity is producing sufficient Revenue relative
to advertising Spend and determine whether deeper channel-level analysis
is required.

### Related Requirements
- BR-03
- BR-07
- FR-20

---

## BQ-02 — Channel Performance

### Stakeholder
VP of Marketing / Marketing Operations Manager

### Business Question
Which marketing channels generate the strongest and weakest Revenue and ROAS?

### Required Measures
- Spend
- Revenue
- ROAS
- Channel

### Business Decision Supported
Identify channels that may warrant additional investment, optimization
or further performance investigation.

### Related Requirements
- BR-01
- BR-03
- FR-16
- FR-20
- US-03

---

# 3. Campaign Performance Questions

## BQ-03 — Highest Performing Campaigns

### Stakeholder
Marketing Operations Manager

### Business Question
Which campaigns are generating the strongest Revenue and ROAS?

### Required Measures
- Campaign
- Spend
- Revenue
- ROAS
- Wins

### Business Decision Supported
Identify campaign approaches that may warrant continued investment or
further analysis to understand the drivers of strong performance.

### Related Requirements
- BR-01
- BR-03
- FR-17
- FR-20
- US-05

---

## BQ-04 — Underperforming Campaigns

### Stakeholder
Marketing Operations Manager / Campaign Performance Analyst

### Business Question
Which campaigns fall below the agreed ROAS review threshold?

### Required Measures
- Campaign
- Channel
- Spend
- Revenue
- ROAS

### Business Rule
For the initial portfolio release:

**ROAS < 2.0 = Campaign requires business review**

### Business Decision Supported
Prioritize campaigns for investigation before making budget,
targeting or optimization decisions.

A campaign being flagged does not automatically mean that it should
be stopped.

### Related Requirements
- BR-07
- BRULE-08
- FR-21
- FR-22
- FR-23
- US-06

---

# 4. CRM Funnel Questions

## BQ-05 — Lead-to-Opportunity Conversion

### Stakeholder
CRM / Sales Operations Manager

### Business Question
Which channels and campaigns are generating Leads that successfully
progress into Opportunities?

### Required Measures
- Leads
- Opportunities
- Lead-to-Opportunity Conversion Rate
- Channel
- Campaign

### Business Decision Supported
Identify areas where high Lead volume does not translate into sufficient
sales-pipeline progression.

### Related Requirements
- BR-03
- FR-19
- US-04

---

## BQ-06 — Opportunity-to-Win Performance

### Stakeholder
CRM / Sales Operations Manager

### Business Question
Which channels and campaigns demonstrate the strongest and weakest
Opportunity Win Rates?

### Required Measures
- Opportunities
- Wins
- Opportunity Win Rate
- Channel
- Campaign

### Business Decision Supported
Identify where Opportunities are being generated but are not successfully
converting into Wins.

### Related Requirements
- BR-03
- FR-19
- US-04

---

## BQ-07 — Funnel Drop-Off

### Stakeholder
CRM / Sales Operations Manager / Marketing Operations Manager

### Business Question
Where is the largest drop-off occurring within the
Lead → Opportunity → Win funnel?

### Required Measures
- Leads
- Opportunities
- Wins
- Lead-to-Opportunity Conversion Rate
- Opportunity Win Rate

### Business Decision Supported
Determine whether performance issues are concentrated at Lead qualification
or Opportunity conversion stages.

### Related Requirements
- BR-03
- FR-10
- FR-19
- US-04

---

# 5. Marketing Efficiency Questions

## BQ-08 — Cost per Lead

### Stakeholder
Marketing Operations Manager

### Business Question
Which channels and campaigns acquire Leads most efficiently based on CPL?

### Required Measures
- Spend
- Leads
- CPL
- Channel
- Campaign

### Business Decision Supported
Compare Lead acquisition efficiency while ensuring CPL is not considered
in isolation from downstream funnel and Revenue performance.

### Related Requirements
- BR-02
- FR-08
- FR-15

---

## BQ-09 — Engagement Performance

### Stakeholder
Campaign Performance Analyst

### Business Question
Which channels and campaigns have stronger or weaker click-through
performance?

### Required Measures
- Impressions
- Clicks
- CTR
- Channel
- Campaign

### Business Decision Supported
Identify potential engagement differences that may require further
campaign-level investigation.

CTR alone should not be used to determine overall campaign success.

### Related Requirements
- BR-02
- FR-08
- FR-15

---

# 6. Trend Questions

## BQ-10 — Performance Over Time

### Stakeholder
VP of Marketing / Marketing Operations Manager

### Business Question
How are Spend, Revenue and ROAS changing over time?

### Required Measures
- Reporting Date
- Spend
- Revenue
- ROAS

### Business Decision Supported
Identify whether overall campaign performance is improving, declining
or experiencing periods that require further investigation.

### Related Requirements
- BR-07
- FR-18
- US-03

---

## BQ-11 — Channel Trend Comparison

### Stakeholder
Marketing Operations Manager

### Business Question
Are individual marketing channels improving or declining over time?

### Required Measures
- Reporting Date
- Channel
- Spend
- Revenue
- ROAS

### Business Decision Supported
Identify channel-level performance changes that may not be visible from
overall aggregated reporting.

### Related Requirements
- BR-01
- BR-07
- FR-16
- FR-18

---

# 7. Cross-Metric Business Question

## BQ-12 — Lead Volume vs Business Value

### Stakeholder
Marketing Operations Manager / CRM Sales Operations Manager

### Business Question
Do the channels generating the most Leads also generate the strongest
Revenue and ROAS?

### Required Measures
- Leads
- Wins
- Revenue
- ROAS
- Channel

### Business Decision Supported
Prevent Marketing performance from being evaluated only on Lead volume
and identify whether high-volume channels are producing meaningful
downstream business outcomes.

### Related Requirements
- BR-03
- FR-14
- FR-19
- FR-20

---

# 8. Analysis Principles

The following principles will be applied during analysis.

### Metrics Should Not Be Interpreted in Isolation

For example:

- High CTR does not necessarily mean high Revenue.
- Low CPL does not necessarily mean high-quality Leads.
- High Lead volume does not necessarily result in high Wins.
- High Revenue does not necessarily indicate efficient marketing Spend.
- Low ROAS should trigger investigation rather than an automatic
  campaign decision.

---

### Analysis Should Separate Observation From Recommendation

Example:

**Observation**

Campaign A has a ROAS below the agreed review threshold.

**Investigation**

Review Spend, Revenue, Lead conversion and Win Rate to understand
the potential cause.

**Recommendation**

A business recommendation should only be made after the relevant
performance context has been evaluated.

---

### Correlation Should Not Be Presented as Proven Causation

The portfolio dataset can identify performance patterns and associations.

It does not independently prove that a specific marketing activity
caused a particular business outcome.

---

# 9. Analysis Priority

The initial SQL business analysis will prioritize:

1. Overall Spend, Revenue and ROAS
2. Channel performance
3. Campaign performance
4. Underperforming campaigns
5. Lead-to-Opportunity conversion
6. Opportunity Win Rate
7. Funnel drop-off
8. CPL
9. CTR
10. Performance trends
11. Channel trends
12. Lead volume compared with Revenue and ROAS

---

# 10. BA Role

The Business Analyst defined the analytical questions by:

- Translating stakeholder goals into measurable business questions
- Identifying the metrics required to answer each question
- Connecting analysis to approved requirements and business rules
- Ensuring questions can be supported by the available MVP dataset
- Identifying the business decision each analysis is intended to support
- Preventing individual KPIs from being interpreted without appropriate
  business context
- Coordinating clarification between Marketing, CRM and Data/BI stakeholders

The SQL analysis and dashboard should therefore be designed around
business questions rather than around available technical features.
