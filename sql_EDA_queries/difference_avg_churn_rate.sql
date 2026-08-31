-- How does churn rate vary across customer segments within each geography

WITH CH_RATE AS (
    SELECT 
        CASE
            WHEN D.[Age] < 30 THEN 'Under 30'
            WHEN D.[Age] BETWEEN 30 AND 50 THEN 'Between 30-50'
            ELSE 'Above 50'
        END AS Age_Group,
        D.[Churned],
        L.[Geography] AS Country
    FROM [dbo].[demographic] D
    JOIN [dbo].[location] L 
        ON L.[LocationId] = D.[LocationId]
),

SecondTbl AS (
    SELECT 
        Country,
        Age_Group,
        COUNT(*) AS Total_Customer,
        AVG(CAST(Churned AS FLOAT)) AS AvG_Churn_Rate,
        AVG(AVG(CAST(Churned AS FLOAT))) 
            OVER (PARTITION BY Country) AS AvG_Churn_Country
    FROM CH_RATE
    GROUP BY Country, Age_Group
)

SELECT
    Country,
    Age_Group,
    Total_Customer,
    FORMAT(AvG_Churn_Rate * 100, 'N2') + '%' AS AvG_Churn_Rate,
    FORMAT(AvG_Churn_Country * 100, 'N2') + '%' AS AvG_Churn_Country,
    FORMAT((AvG_Churn_Country - AvG_Churn_Rate) * 100, 'N2') + '%' AS Diff
FROM SecondTbl;
