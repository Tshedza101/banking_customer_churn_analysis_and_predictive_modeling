USE [bank_churn];

-- Q1: Which customer profiles have the highest churn risk rate based on gender?
WITH CH_RATE AS (
	SELECT 
		[gender],
		COUNT(*) AS Total_customers,
		SUM(CAST([churned] AS INT)) AS Total_churn
	FROM [dbo].[demographic]
	GROUP BY [gender]
	)
	SELECT *,
	FORMAT((Total_churn * 100 / Total_customers), 'N2') + '%' AS Churn_rate
FROM CH_RATE;