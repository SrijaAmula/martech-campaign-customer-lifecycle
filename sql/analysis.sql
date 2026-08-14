-- MarTech SQL: CTEs, aggregation, HAVING, window functions
WITH channel_month AS (
 SELECT substr(date,1,7) month, channel, SUM(spend) spend, SUM(leads) leads, SUM(opportunities) opportunities, SUM(wins) wins, SUM(revenue) revenue
 FROM campaign_performance GROUP BY 1,2
), ranked AS (
 SELECT *, revenue/NULLIF(spend,0) roas,
        RANK() OVER (PARTITION BY month ORDER BY revenue/NULLIF(spend,0) DESC) roas_rank,
        LAG(revenue) OVER (PARTITION BY channel ORDER BY month) prior_revenue
 FROM channel_month
)
SELECT *, (revenue-prior_revenue)/NULLIF(prior_revenue,0) mom_growth FROM ranked WHERE spend > 0 ORDER BY month, roas_rank;

SELECT channel, campaign, SUM(spend) spend, SUM(revenue) revenue
FROM campaign_performance GROUP BY channel,campaign HAVING SUM(revenue)/NULLIF(SUM(spend),0) < 2.0;
