# Business Insights & Recommendations

## MarTech Campaign Optimization & CRM Funnel Transformation

---

## 1. Purpose

This document summarizes the key findings generated from SQL analysis
of the approved MVP campaign-performance dataset.

The insights are aligned with the stakeholder business questions defined
during reporting requirements analysis.

The objective is to distinguish between:

- Analytical observations
- Business interpretation
- Areas requiring further investigation
- Evidence-supported recommendations

The analysis does not treat correlation as proven causation.

---

# 2. Executive Performance Summary

The analysed dataset produced the following overall results:

| Metric | Result |
|---|---:|
| Marketing Spend | 631,811.35 |
| Revenue | 2,008,436.18 |
| Overall ROAS | 3.18 |
| Leads | 61,611 |
| Opportunities | 17,600 |
| Wins | 6,397 |
| Lead-to-Opportunity Conversion | 28.57% |
| Opportunity Win Rate | 36.35% |
| Overall CPL | 10.25 |
| Overall CTR | 3.41% |

The dataset therefore generates approximately 3.18 units of Revenue
for every unit of Marketing Spend.

This represents ROAS rather than profit or ROI.

---

# 3. Channel Performance

| Channel | Spend | Revenue | ROAS |
|---|---:|---:|---:|
| Email | 135,575.86 | 574,808.84 | 4.24 |
| Affiliate | 117,588.28 | 433,039.61 | 3.68 |
| Organic | 139,805.22 | 390,783.56 | 2.80 |
| Paid Social | 127,011.49 | 329,773.14 | 2.60 |
| Paid Search | 111,830.50 | 280,031.03 | 2.50 |

## Insight

Email produced the highest Revenue and highest overall channel ROAS.

Affiliate ranked second for Revenue and ROAS despite ranking only fourth
for Lead volume.

This indicates that Lead volume alone does not provide a complete view
of marketing performance.

## Recommendation

Marketing stakeholders should evaluate channel performance using
downstream outcomes such as Opportunities, Wins, Revenue and ROAS in
addition to Lead volume.

Strong-performing channels should be investigated at campaign level before
significant budget changes are made.

---

# 4. Campaigns Requiring Business Review

The approved portfolio business rule flags campaigns with ROAS below 2.0.

The following campaign/channel combinations met this condition:

| Channel | Campaign | Spend | Revenue | ROAS |
|---|---|---:|---:|---:|
| Paid Social | New Product | 33,028.43 | 53,383.31 | 1.62 |
| Paid Search | Summer Sale | 29,318.48 | 47,655.86 | 1.63 |
| Organic | New Product | 27,647.95 | 50,148.45 | 1.81 |

These campaigns should be prioritized for investigation.

Being below the threshold does not automatically indicate that a campaign
should be stopped.

---

## 4.1 Paid Social — New Product

Observed metrics include:

- ROAS: 1.62
- CPL: 17.42
- Lead-to-Opportunity Conversion: 32.75%
- Opportunity Win Rate: 37.04%

The funnel conversion rates do not independently indicate a severe
conversion issue.

The relatively high CPL and low Revenue-to-Spend relationship suggest
that acquisition efficiency and campaign economics should be investigated.

---

## 4.2 Paid Search — Summer Sale

Observed metrics include:

- ROAS: 1.63
- CPL: 13.09
- Lead-to-Opportunity Conversion: 30.55%
- Opportunity Win Rate: 32.16%

Potential investigation areas include acquisition cost, Revenue generated
per Win and overall campaign economics.

---

## 4.3 Organic — New Product

Observed metrics include:

- ROAS: 1.81
- Lead-to-Opportunity Conversion: 26.59%
- Opportunity Win Rate: 28.57%

Compared with the overall Opportunity Win Rate of 36.35%, this campaign
shows weaker downstream conversion.

The campaign should therefore be reviewed for both Revenue efficiency
and downstream Opportunity conversion.

---

# 5. CRM Funnel Performance

The overall funnel contains:

**61,611 Leads → 17,600 Opportunities → 6,397 Wins**

Lead-to-Opportunity Conversion:

**28.57%**

Opportunity Win Rate:

**36.35%**

The largest relative funnel drop occurs between Lead and Opportunity.

Approximately 71.43% of Leads do not progress into Opportunities within
the simplified MVP funnel.

This finding identifies Lead qualification and pipeline progression as
priority areas for further investigation.

The analysis does not conclude that the conversion rate is inherently
poor because an approved business benchmark is not available.

---

# 6. Lead Volume vs Business Value

Channel rankings demonstrate that Lead volume and downstream business
value are not always aligned.

Affiliate ranks lower for total Lead volume but ranks second for both
Revenue and ROAS.

This supports the business requirement to evaluate marketing effectiveness
using downstream CRM outcomes rather than relying only on acquisition volume.

---

# 7. High-Performing Campaigns

The strongest campaign/channel combinations by ROAS include:

| Channel | Campaign | ROAS |
|---|---|---:|
| Affiliate | Loyalty | 5.77 |
| Email | Loyalty | 5.50 |
| Paid Search | Loyalty | 4.77 |
| Email | Brand | 4.55 |
| Organic | Loyalty | 4.42 |

Loyalty campaigns demonstrate relatively strong ROAS across several
marketing channels within the current dataset.

This pattern should be investigated further before concluding that the
campaign type itself caused the stronger performance.

Potential factors include:

- Audience characteristics
- Spend levels
- Conversion performance
- Revenue per Win
- Channel and campaign mix

---

# 8. Paid Search Assessment

Paid Search has:

- The lowest overall channel ROAS: 2.50
- The highest channel CPL: 11.16
- The lowest channel Revenue
- The lowest channel Lead volume

However, its Opportunity Win Rate is approximately 37.12%, indicating
that downstream closing performance is comparatively stronger than some
other channel metrics.

This suggests that Paid Search performance should be investigated across
acquisition efficiency and campaign mix rather than attributing the issue
solely to Opportunity-to-Win conversion.

---

# 9. Performance Trend

Monthly ROAS varied materially across the reporting period.

| Month | Revenue | ROAS |
|---|---:|---:|
| 2026-01 | 248,457.33 | 2.66 |
| 2026-02 | 397,189.36 | 3.31 |
| 2026-03 | 297,359.35 | 3.30 |
| 2026-04 | 291,232.01 | 3.25 |
| 2026-05 | 254,618.54 | 2.40 |
| 2026-06 | 191,953.49 | 2.75 |
| 2026-07 | 327,626.10 | 5.21 |

July recorded the strongest monthly ROAS.

Revenue increased significantly from June to July while overall Spend
was lower.

Further campaign and channel drill-down is required before attributing
the improvement to a specific cause.

---

# 10. Business Recommendations

Based on the current MVP analysis, the following actions are recommended.

### Recommendation 1 — Maintain Multi-Metric Performance Evaluation

Marketing performance should not be evaluated using Lead volume alone.

Revenue, ROAS and CRM funnel conversion should be considered alongside
acquisition KPIs.

### Recommendation 2 — Investigate Underperforming Campaigns

Prioritize business review for:

- Paid Social / New Product
- Paid Search / Summer Sale
- Organic / New Product

The review should assess acquisition cost, funnel conversion and Revenue
generation before budget decisions are made.

### Recommendation 3 — Investigate Strong Loyalty Performance

Loyalty campaigns display strong ROAS across multiple channels.

Stakeholders should identify whether common audience, campaign or value
characteristics explain this pattern before scaling similar activity.

### Recommendation 4 — Review Lead-to-Opportunity Progression

Lead-to-Opportunity represents the largest funnel drop-off.

CRM and Marketing stakeholders should investigate qualification criteria,
Lead quality and handoff processes.

### Recommendation 5 — Investigate Paid Search Acquisition Efficiency

Paid Search demonstrates comparatively low ROAS and higher CPL while
maintaining a relatively stronger Opportunity Win Rate.

The investigation should therefore focus on upstream acquisition
efficiency and campaign mix in addition to downstream conversion.

### Recommendation 6 — Investigate July Performance Drivers

July demonstrates significantly stronger ROAS than earlier periods.

Stakeholders should perform channel and campaign drill-down to identify
which factors contributed to the improvement before applying changes to
future campaign planning.

---

# 11. Analysis Limitations

The findings should be interpreted within the documented MVP limitations.

The dataset:

- Is synthetic
- Represents aggregated campaign reporting
- Does not contain individual customer records
- Does not independently prove causal relationships
- Does not provide an external performance benchmark
- Does not support true ROI calculation
- Does not represent complete production Marketing-to-CRM integration

Recommendations therefore focus on investigation and decision support
rather than unsupported causal conclusions.

---

# 12. BA Role

The Business Analyst supported insight generation by:

- Translating stakeholder questions into measurable analysis
- Validating that the required data was available
- Connecting SQL findings to business requirements
- Interpreting metrics within business context
- Separating observations from assumptions
- Identifying areas requiring further investigation
- Avoiding unsupported causal conclusions
- Translating analytical findings into actionable stakeholder recommendations
