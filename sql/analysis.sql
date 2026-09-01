/*
============================================================
MarTech Campaign Optimization & CRM Funnel Transformation
SQL Business Analysis

Purpose:
Answer the stakeholder business questions documented in
documentation/BUSINESS_QUESTIONS.md.

Dataset:
campaign_performance

Expected grain:
One row per date + channel + campaign

SQL dialect:
SQLite-compatible SQL
============================================================
*/


/* =========================================================
BQ-01 — Overall Marketing Return

Stakeholder:
VP of Marketing

Business Question:
How much Marketing Spend is generating Revenue,
and what is the overall ROAS?
========================================================= */

SELECT
    ROUND(SUM(spend), 2) AS total_spend,
    ROUND(SUM(revenue), 2) AS total_revenue,

    ROUND(
        SUM(revenue) * 1.0 / NULLIF(SUM(spend), 0),
        2
    ) AS overall_roas

FROM campaign_performance;


/* =========================================================
BQ-02 — Channel Performance

Stakeholder:
VP of Marketing / Marketing Operations Manager

Business Question:
Which marketing channels generate the strongest
and weakest Revenue and ROAS?
========================================================= */

SELECT
    channel,

    ROUND(SUM(spend), 2) AS total_spend,
    ROUND(SUM(revenue), 2) AS total_revenue,

    ROUND(
        SUM(revenue) * 1.0 / NULLIF(SUM(spend), 0),
        2
    ) AS roas

FROM campaign_performance

GROUP BY channel

ORDER BY roas DESC;


/* =========================================================
BQ-03 — Highest Performing Campaigns

Stakeholder:
Marketing Operations Manager

Business Question:
Which campaigns generate the strongest Revenue and ROAS?
========================================================= */

SELECT
    channel,
    campaign,

    ROUND(SUM(spend), 2) AS total_spend,
    SUM(wins) AS total_wins,
    ROUND(SUM(revenue), 2) AS total_revenue,

    ROUND(
        SUM(revenue) * 1.0 / NULLIF(SUM(spend), 0),
        2
    ) AS roas

FROM campaign_performance

GROUP BY
    channel,
    campaign

HAVING SUM(spend) > 0

ORDER BY roas DESC;


/* =========================================================
BQ-04 — Underperforming Campaigns

Stakeholder:
Marketing Operations Manager / Campaign Performance Analyst

Business Rule:
ROAS < 2.0 = Campaign requires business review

Important:
A campaign being flagged does NOT automatically mean
that the campaign should be stopped.
========================================================= */

SELECT
    channel,
    campaign,

    ROUND(SUM(spend), 2) AS total_spend,
    ROUND(SUM(revenue), 2) AS total_revenue,

    ROUND(
        SUM(revenue) * 1.0 / NULLIF(SUM(spend), 0),
        2
    ) AS roas,

    'Business Review Required' AS review_status

FROM campaign_performance

GROUP BY
    channel,
    campaign

HAVING
    SUM(spend) > 0
    AND
    SUM(revenue) * 1.0 / NULLIF(SUM(spend), 0) < 2.0

ORDER BY roas ASC;


/* =========================================================
BQ-05 — Lead-to-Opportunity Conversion

Stakeholder:
CRM / Sales Operations Manager

Business Question:
Which channels are generating Leads that successfully
progress into Opportunities?
========================================================= */

SELECT
    channel,

    SUM(leads) AS total_leads,
    SUM(opportunities) AS total_opportunities,

    ROUND(
        SUM(opportunities) * 100.0 /
        NULLIF(SUM(leads), 0),
        2
    ) AS lead_to_opportunity_pct

FROM campaign_performance

GROUP BY channel

ORDER BY lead_to_opportunity_pct DESC;


/* =========================================================
BQ-05 — Campaign-Level Lead-to-Opportunity Conversion

Provides drill-down beneath the channel-level result.
========================================================= */

SELECT
    channel,
    campaign,

    SUM(leads) AS total_leads,
    SUM(opportunities) AS total_opportunities,

    ROUND(
        SUM(opportunities) * 100.0 /
        NULLIF(SUM(leads), 0),
        2
    ) AS lead_to_opportunity_pct

FROM campaign_performance

GROUP BY
    channel,
    campaign

ORDER BY lead_to_opportunity_pct DESC;


/* =========================================================
BQ-06 — Opportunity-to-Win Performance

Stakeholder:
CRM / Sales Operations Manager

Business Question:
Which channels demonstrate the strongest and weakest
Opportunity Win Rates?
========================================================= */

SELECT
    channel,

    SUM(opportunities) AS total_opportunities,
    SUM(wins) AS total_wins,

    ROUND(
        SUM(wins) * 100.0 /
        NULLIF(SUM(opportunities), 0),
        2
    ) AS opportunity_win_rate_pct

FROM campaign_performance

GROUP BY channel

ORDER BY opportunity_win_rate_pct DESC;


/* =========================================================
BQ-06 — Campaign-Level Opportunity Win Rate
========================================================= */

SELECT
    channel,
    campaign,

    SUM(opportunities) AS total_opportunities,
    SUM(wins) AS total_wins,

    ROUND(
        SUM(wins) * 100.0 /
        NULLIF(SUM(opportunities), 0),
        2
    ) AS opportunity_win_rate_pct

FROM campaign_performance

GROUP BY
    channel,
    campaign

ORDER BY opportunity_win_rate_pct DESC;


/* =========================================================
BQ-07 — Funnel Drop-Off

Stakeholder:
CRM / Sales Operations Manager
Marketing Operations Manager

Business Question:
Where is the largest drop-off occurring within the
Lead → Opportunity → Win funnel?
========================================================= */

SELECT
    SUM(leads) AS total_leads,
    SUM(opportunities) AS total_opportunities,
    SUM(wins) AS total_wins,

    SUM(leads) - SUM(opportunities)
        AS lead_to_opportunity_drop_count,

    SUM(opportunities) - SUM(wins)
        AS opportunity_to_win_drop_count,

    ROUND(
        SUM(opportunities) * 100.0 /
        NULLIF(SUM(leads), 0),
        2
    ) AS lead_to_opportunity_conversion_pct,

    ROUND(
        SUM(wins) * 100.0 /
        NULLIF(SUM(opportunities), 0),
        2
    ) AS opportunity_win_rate_pct

FROM campaign_performance;


/* =========================================================
BQ-07 — Funnel Drop-Off by Channel

Allows stakeholders to identify where funnel performance
differs across marketing channels.
========================================================= */

SELECT
    channel,

    SUM(leads) AS total_leads,
    SUM(opportunities) AS total_opportunities,
    SUM(wins) AS total_wins,

    SUM(leads) - SUM(opportunities)
        AS lead_to_opportunity_drop_count,

    SUM(opportunities) - SUM(wins)
        AS opportunity_to_win_drop_count,

    ROUND(
        SUM(opportunities) * 100.0 /
        NULLIF(SUM(leads), 0),
        2
    ) AS lead_to_opportunity_conversion_pct,

    ROUND(
        SUM(wins) * 100.0 /
        NULLIF(SUM(opportunities), 0),
        2
    ) AS opportunity_win_rate_pct

FROM campaign_performance

GROUP BY channel

ORDER BY lead_to_opportunity_conversion_pct ASC;


/* =========================================================
BQ-08 — Cost per Lead

Stakeholder:
Marketing Operations Manager

Business Question:
Which channels acquire Leads most efficiently based on CPL?

Important:
CPL should not be interpreted without considering
downstream funnel performance and Revenue.
========================================================= */

SELECT
    channel,

    ROUND(SUM(spend), 2) AS total_spend,
    SUM(leads) AS total_leads,

    ROUND(
        SUM(spend) * 1.0 /
        NULLIF(SUM(leads), 0),
        2
    ) AS cost_per_lead

FROM campaign_performance

GROUP BY channel

ORDER BY cost_per_lead ASC;


/* =========================================================
BQ-08 — Campaign-Level CPL
========================================================= */

SELECT
    channel,
    campaign,

    ROUND(SUM(spend), 2) AS total_spend,
    SUM(leads) AS total_leads,

    ROUND(
        SUM(spend) * 1.0 /
        NULLIF(SUM(leads), 0),
        2
    ) AS cost_per_lead

FROM campaign_performance

GROUP BY
    channel,
    campaign

ORDER BY cost_per_lead ASC;


/* =========================================================
BQ-09 — Engagement Performance

Stakeholder:
Campaign Performance Analyst

Business Question:
Which channels demonstrate stronger or weaker CTR?

Important:
CTR measures engagement and should not independently
be treated as overall campaign success.
========================================================= */

SELECT
    channel,

    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,

    ROUND(
        SUM(clicks) * 100.0 /
        NULLIF(SUM(impressions), 0),
        2
    ) AS ctr_pct

FROM campaign_performance

GROUP BY channel

ORDER BY ctr_pct DESC;


/* =========================================================
BQ-09 — Campaign-Level CTR
========================================================= */

SELECT
    channel,
    campaign,

    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,

    ROUND(
        SUM(clicks) * 100.0 /
        NULLIF(SUM(impressions), 0),
        2
    ) AS ctr_pct

FROM campaign_performance

GROUP BY
    channel,
    campaign

ORDER BY ctr_pct DESC;


/* =========================================================
BQ-10 — Performance Over Time

Stakeholder:
VP of Marketing / Marketing Operations Manager

Business Question:
How are Spend, Revenue and ROAS changing over time?

The month is derived from the reporting date.
========================================================= */

SELECT
    SUBSTR("date", 1, 7) AS reporting_month,

    ROUND(SUM(spend), 2) AS total_spend,
    ROUND(SUM(revenue), 2) AS total_revenue,

    ROUND(
        SUM(revenue) * 1.0 /
        NULLIF(SUM(spend), 0),
        2
    ) AS roas

FROM campaign_performance

GROUP BY SUBSTR("date", 1, 7)

ORDER BY reporting_month;


/* =========================================================
BQ-10 — Month-over-Month Revenue Trend

Uses LAG() to compare each month against the
previous reporting month.
========================================================= */

WITH monthly_performance AS (

    SELECT
        SUBSTR("date", 1, 7) AS reporting_month,

        SUM(spend) AS total_spend,
        SUM(revenue) AS total_revenue

    FROM campaign_performance

    GROUP BY SUBSTR("date", 1, 7)
),

monthly_comparison AS (

    SELECT
        reporting_month,
        total_spend,
        total_revenue,

        LAG(total_revenue)
        OVER (
            ORDER BY reporting_month
        ) AS prior_month_revenue

    FROM monthly_performance
)

SELECT
    reporting_month,

    ROUND(total_spend, 2) AS total_spend,
    ROUND(total_revenue, 2) AS total_revenue,
    ROUND(prior_month_revenue, 2) AS prior_month_revenue,

    ROUND(
        (
            total_revenue - prior_month_revenue
        ) * 100.0 /
        NULLIF(prior_month_revenue, 0),
        2
    ) AS revenue_mom_change_pct

FROM monthly_comparison

ORDER BY reporting_month;


/* =========================================================
BQ-11 — Channel Trend Comparison

Stakeholder:
Marketing Operations Manager

Business Question:
Are individual marketing channels improving or
declining over time?
========================================================= */

WITH channel_monthly AS (

    SELECT
        SUBSTR("date", 1, 7) AS reporting_month,
        channel,

        SUM(spend) AS total_spend,
        SUM(revenue) AS total_revenue

    FROM campaign_performance

    GROUP BY
        SUBSTR("date", 1, 7),
        channel
),

channel_trend AS (

    SELECT
        reporting_month,
        channel,
        total_spend,
        total_revenue,

        total_revenue * 1.0 /
        NULLIF(total_spend, 0) AS roas,

        LAG(total_revenue)
        OVER (
            PARTITION BY channel
            ORDER BY reporting_month
        ) AS prior_month_revenue

    FROM channel_monthly
)

SELECT
    reporting_month,
    channel,

    ROUND(total_spend, 2) AS total_spend,
    ROUND(total_revenue, 2) AS total_revenue,
    ROUND(roas, 2) AS roas,

    ROUND(
        (
            total_revenue - prior_month_revenue
        ) * 100.0 /
        NULLIF(prior_month_revenue, 0),
        2
    ) AS revenue_mom_change_pct

FROM channel_trend

ORDER BY
    channel,
    reporting_month;


/* =========================================================
BQ-12 — Lead Volume vs Business Value

Stakeholder:
Marketing Operations Manager
CRM / Sales Operations Manager

Business Question:
Do channels generating the most Leads also generate
the strongest Revenue and ROAS?

The query ranks channels independently by:
1. Lead volume
2. Revenue
3. ROAS

Different rankings indicate that volume and business
value are not necessarily the same.
========================================================= */

WITH channel_value AS (

    SELECT
        channel,

        SUM(leads) AS total_leads,
        SUM(wins) AS total_wins,

        SUM(spend) AS total_spend,
        SUM(revenue) AS total_revenue,

        SUM(revenue) * 1.0 /
        NULLIF(SUM(spend), 0) AS roas

    FROM campaign_performance

    GROUP BY channel
)

SELECT
    channel,

    total_leads,
    total_wins,

    ROUND(total_spend, 2) AS total_spend,
    ROUND(total_revenue, 2) AS total_revenue,
    ROUND(roas, 2) AS roas,

    RANK()
    OVER (
        ORDER BY total_leads DESC
    ) AS lead_volume_rank,

    RANK()
    OVER (
        ORDER BY total_revenue DESC
    ) AS revenue_rank,

    RANK()
    OVER (
        ORDER BY roas DESC
    ) AS roas_rank

FROM channel_value

ORDER BY lead_volume_rank;


/* =========================================================
Optional Executive Summary Dataset

This query can later support a high-level dashboard
or stakeholder summary.

It intentionally combines the major business metrics
without replacing the detailed analyses above.
========================================================= */

SELECT
    channel,

    ROUND(SUM(spend), 2) AS spend,

    SUM(impressions) AS impressions,
    SUM(clicks) AS clicks,
    SUM(leads) AS leads,
    SUM(opportunities) AS opportunities,
    SUM(wins) AS wins,

    ROUND(SUM(revenue), 2) AS revenue,

    ROUND(
        SUM(clicks) * 100.0 /
        NULLIF(SUM(impressions), 0),
        2
    ) AS ctr_pct,

    ROUND(
        SUM(spend) * 1.0 /
        NULLIF(SUM(leads), 0),
        2
    ) AS cpl,

    ROUND(
        SUM(opportunities) * 100.0 /
        NULLIF(SUM(leads), 0),
        2
    ) AS lead_to_opportunity_pct,

    ROUND(
        SUM(wins) * 100.0 /
        NULLIF(SUM(opportunities), 0),
        2
    ) AS opportunity_win_rate_pct,

    ROUND(
        SUM(revenue) * 1.0 /
        NULLIF(SUM(spend), 0),
        2
    ) AS roas

FROM campaign_performance

GROUP BY channel

ORDER BY roas DESC;
