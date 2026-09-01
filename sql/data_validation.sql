/*
============================================================
MarTech Campaign Optimization & CRM Funnel Transformation
SQL Data Validation

Purpose:
Validate the synthetic campaign reporting dataset against
the agreed business data-quality rules.

Expected table:
campaign_performance

Expected grain:
One row per date + channel + campaign
============================================================
*/


/* =========================================================
DQ-01 — Reporting Date must be present and valid
Expected result: 0 rows
========================================================= */

SELECT *
FROM campaign_performance
WHERE "date" IS NULL
   OR TRIM("date") = ''
   OR date("date") IS NULL;


/* =========================================================
DQ-02 — Marketing Channel must be present
Expected result: 0 rows
========================================================= */

SELECT *
FROM campaign_performance
WHERE channel IS NULL
   OR TRIM(channel) = '';


/* =========================================================
DQ-03 — Campaign must be present
Expected result: 0 rows
========================================================= */

SELECT *
FROM campaign_performance
WHERE campaign IS NULL
   OR TRIM(campaign) = '';


/* =========================================================
DQ-04 — Spend must not be negative
Expected result: 0 rows
========================================================= */

SELECT *
FROM campaign_performance
WHERE spend < 0;


/* =========================================================
DQ-05 — Impressions and Clicks must not be negative
Expected result: 0 rows
========================================================= */

SELECT *
FROM campaign_performance
WHERE impressions < 0
   OR clicks < 0;


/* =========================================================
DQ-06 — Leads, Opportunities and Wins must not be negative
Expected result: 0 rows
========================================================= */

SELECT *
FROM campaign_performance
WHERE leads < 0
   OR opportunities < 0
   OR wins < 0;


/* =========================================================
DQ-07 — Opportunities should not exceed Leads
Expected result: 0 rows

Records returned by this query require CRM reconciliation.
========================================================= */

SELECT
    "date",
    channel,
    campaign,
    leads,
    opportunities
FROM campaign_performance
WHERE opportunities > leads;


/* =========================================================
DQ-08 — Wins should not exceed Opportunities
Expected result: 0 rows

Records returned by this query require CRM reconciliation.
========================================================= */

SELECT
    "date",
    channel,
    campaign,
    opportunities,
    wins
FROM campaign_performance
WHERE wins > opportunities;


/* =========================================================
DQ-09 — Revenue must not be negative
Expected result: 0 rows
========================================================= */

SELECT *
FROM campaign_performance
WHERE revenue < 0;


/* =========================================================
DQ-10 — Campaign Mapping Validation

The current synthetic dataset does not contain a separate
campaign_id or campaign-mapping table.

Therefore cross-system campaign mapping cannot yet be
validated directly using SQL.

This is a documented data gap (DG-01) and should not be
hidden by creating an artificial mapping assumption here.
========================================================= */


/* =========================================================
DQ-11 — Duplicate reporting-grain check

Expected grain:
date + channel + campaign

Expected result: 0 rows
========================================================= */

SELECT
    "date",
    channel,
    campaign,
    COUNT(*) AS record_count
FROM campaign_performance
GROUP BY
    "date",
    channel,
    campaign
HAVING COUNT(*) > 1;


/* =========================================================
Additional Business Sanity Checks
These checks support investigation but are not currently
defined as formal rejection rules.
========================================================= */


/* Clicks greater than Impressions */

SELECT
    "date",
    channel,
    campaign,
    impressions,
    clicks
FROM campaign_performance
WHERE clicks > impressions;


/* Leads greater than Clicks

This is treated as an investigation query rather than a hard
validation failure because attribution rules may differ in a
real-world implementation.
*/

SELECT
    "date",
    channel,
    campaign,
    clicks,
    leads
FROM campaign_performance
WHERE leads > clicks;


/* =========================================================
KPI Validation Sample

Validates governed KPI formulas without storing them as
independent source values.
========================================================= */

SELECT
    "date",
    channel,
    campaign,

    spend,
    impressions,
    clicks,
    leads,
    opportunities,
    wins,
    revenue,

    ROUND(
        clicks * 100.0 / NULLIF(impressions, 0),
        2
    ) AS calculated_ctr_pct,

    ROUND(
        spend * 1.0 / NULLIF(leads, 0),
        2
    ) AS calculated_cpl,

    ROUND(
        opportunities * 100.0 / NULLIF(leads, 0),
        2
    ) AS calculated_lead_to_opportunity_pct,

    ROUND(
        wins * 100.0 / NULLIF(opportunities, 0),
        2
    ) AS calculated_win_rate_pct,

    ROUND(
        revenue * 1.0 / NULLIF(spend, 0),
        2
    ) AS calculated_roas

FROM campaign_performance;


/* =========================================================
Data Validation Summary

This query provides a compact count of detected exceptions.
A count of 0 represents no detected exceptions for the rule.
========================================================= */

SELECT

    SUM(
        CASE
            WHEN "date" IS NULL
              OR TRIM("date") = ''
              OR date("date") IS NULL
            THEN 1 ELSE 0
        END
    ) AS dq01_invalid_date,

    SUM(
        CASE
            WHEN channel IS NULL
              OR TRIM(channel) = ''
            THEN 1 ELSE 0
        END
    ) AS dq02_missing_channel,

    SUM(
        CASE
            WHEN campaign IS NULL
              OR TRIM(campaign) = ''
            THEN 1 ELSE 0
        END
    ) AS dq03_missing_campaign,

    SUM(
        CASE
            WHEN spend < 0
            THEN 1 ELSE 0
        END
    ) AS dq04_negative_spend,

    SUM(
        CASE
            WHEN impressions < 0
              OR clicks < 0
            THEN 1 ELSE 0
        END
    ) AS dq05_negative_activity,

    SUM(
        CASE
            WHEN leads < 0
              OR opportunities < 0
              OR wins < 0
            THEN 1 ELSE 0
        END
    ) AS dq06_negative_funnel,

    SUM(
        CASE
            WHEN opportunities > leads
            THEN 1 ELSE 0
        END
    ) AS dq07_opportunities_exceed_leads,

    SUM(
        CASE
            WHEN wins > opportunities
            THEN 1 ELSE 0
        END
    ) AS dq08_wins_exceed_opportunities,

    SUM(
        CASE
            WHEN revenue < 0
            THEN 1 ELSE 0
        END
    ) AS dq09_negative_revenue

FROM campaign_performance;
