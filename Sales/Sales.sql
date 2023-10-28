-- Check data 
SELECT * FROM [dbo].[sales_data_sample1]

-- Calculate total sales per year
SELECT YEAR_ID, ROUND(SUM(SALES), 0) as revenue
FROM [dbo].[sales_data_sample1]
GROUP BY YEAR_ID
ORDER BY YEAR_ID

-- Sales of 2005 is much lower, investigate
SELECT YEAR_ID, MONTH_ID, ROUND(SUM(SALES), 0) as revenue
FROM [dbo].[sales_data_sample1]
GROUP BY YEAR_ID, MONTH_ID
ORDER BY YEAR_ID, MONTH_ID

-- Calculate sales for first 5 months of each year
SELECT YEAR_ID, ROUND(SUM(SALES), 0) as revenue, COUNT(DISTINCT MONTH_ID) as n_months
FROM [dbo].[sales_data_sample1]
WHERE MONTH_ID IN (1,2,3,4,5)
GROUP BY YEAR_ID
ORDER BY YEAR_ID

-- Calculate sales by season
SELECT YEAR_ID, SEASON, ROUND(SUM(SALES), 0) as seasonal_sales
FROM (
	SELECT *,
		CASE 
			WHEN MONTH_ID IN (3,4,5) THEN '1_Spring'
			WHEN MONTH_ID IN (6,7,8) THEN '2_Summer'
			WHEN MONTH_ID IN (9,10,11) THEN '3_Fall'
			ELSE '4_Winter'
		END as SEASON
	FROM [dbo].[sales_data_sample1]
) as t1
GROUP BY YEAR_ID, SEASON
ORDER BY YEAR_ID, SEASON

-- Top selling products by sales
SELECT PRODUCTLINE, ROUND(SUM(SALES), 0) as total_sales
FROM [dbo].[sales_data_sample1]
GROUP BY PRODUCTLINE
ORDER BY total_sales DESC

-- Top 5 customers by sales
SELECT TOP 5 CUSTOMERNAME, ROUND(SUM(SALES), 0) as total_sales
FROM [dbo].[sales_data_sample1]
GROUP BY CUSTOMERNAME
ORDER BY total_sales DESC



-- Calculate retention rate for many years to come
WITH tab AS (
    SELECT
        year_id AS order_year,
        CUSTOMERNAME AS unique_customers
    FROM [dbo].[sales_data_sample1]
    GROUP BY
        year_id, CUSTOMERNAME
),

tableau AS (
	SELECT order_year + 1 as year1, 
		COUNT(*) as n_cus
	FROM tab
	GROUP BY order_year
),

tabl AS (
SELECT t1.order_year y1, t1.unique_customers c1, t2.order_year y2, t2.unique_customers c2
FROM tab t1
LEFT JOIN tab t2
ON t1.order_year + 1 = t2.order_year AND t1.unique_customers = t2.unique_customers
),

ta AS (
SELECT y1+1 as y1,
	COUNT(CASE WHEN y1 + 1 = y2 THEN 1 ELSE NULL END) as retained
	 
FROM tabl
GROUP BY y1
)
SELECT ta.y1 as yearr,
	ROUND(1.0 * ta.retained / tableau.n_cus * 100, 2) AS retention_rate
FROM ta JOIN tableau ON ta.y1 = tableau.year1



-- Number of orders by status
SELECT [STATUS], COUNT(*) AS n_orders
FROM [dbo].[sales_data_sample1]
GROUP BY [STATUS]

-- Average order value
SELECT AVG(SALES) AS avg_sales_per_order
FROM [dbo].[sales_data_sample1]


-- Average number of days between purchases for each customer
WITH t1 AS (
    SELECT customername, orderdate AS this_buy,
		LEAD (customername, 1) OVER (ORDER BY customername) AS cus,
		LEAD (orderdate, 1) OVER (ORDER BY customername) AS next_buy
	FROM [dbo].[sales_data_sample1]
	GROUP BY customername, orderdate
)
,t2 AS (
	SELECT
		customername,
		CASE
			WHEN customername = cus THEN DATEDIFF(day, this_buy, next_buy)
			ELSE NULL
		END AS n_days
	FROM t1
)
SELECT customername, AVG(n_days) AS avg_n_days
FROM t2
GROUP BY customername
ORDER BY avg_n_days