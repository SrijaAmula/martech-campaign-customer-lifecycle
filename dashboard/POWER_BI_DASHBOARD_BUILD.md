# Power BI Dashboard — Portfolio Build

## Project
MarTech Campaign Optimization & CRM Funnel Transformation

## Dashboard Pages
1. Executive Overview
2. Channel & Campaign Performance
3. CRM Funnel & Trend Analysis

## Core DAX Measures

```DAX
Total Spend =
SUM('Campaign Performance'[spend])

Total Revenue =
SUM('Campaign Performance'[revenue])

Total Leads =
SUM('Campaign Performance'[leads])

Total Opportunities =
SUM('Campaign Performance'[opportunities])

Total Wins =
SUM('Campaign Performance'[wins])

ROAS =
DIVIDE([Total Revenue], [Total Spend])

CTR =
DIVIDE(
    SUM('Campaign Performance'[clicks]),
    SUM('Campaign Performance'[impressions])
)

CPL =
DIVIDE(
    [Total Spend],
    [Total Leads]
)

Lead to Opportunity Conversion % =
DIVIDE(
    [Total Opportunities],
    [Total Leads]
)

Opportunity Win Rate % =
DIVIDE(
    [Total Wins],
    [Total Opportunities]
)

Campaign Review Status =
IF(
    [ROAS] < 2,
    "Business Review Required",
    "Within Review Threshold"
)
```

## Validation Benchmarks
- Total Spend: 631,811.35
- Total Revenue: 2,008,436.18
- ROAS: 3.18
- Total Leads: 61,611
- Total Opportunities: 17,600
- Total Wins: 6,397
- Lead-to-Opportunity Conversion: 28.57%
- Opportunity Win Rate: 36.35%
- CPL: 10.25
- CTR: 3.41%

## Portfolio Note
The dashboard screenshots are a visual prototype built from the project's validated synthetic-data benchmarks.
