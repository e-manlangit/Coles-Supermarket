--What are gross sales YTD for each quarter compared to expectations?

SELECT 
    'sales_YTD' AS metric,
    SUM(CASE WHEN quarter = 'Q1 2023' THEN gross_sales_qtr ELSE 0 END) AS "Q1 2023",
    SUM(CASE WHEN quarter = 'Q2 2023' THEN gross_sales_qtr ELSE 0 END) AS "Q2 2023"
FROM sales
UNION ALL
SELECT 
    'expected_revenue' AS metric,
    SUM(CASE WHEN quarter = 'Q1 2023' THEN expec_rev_qtr ELSE 0 END) AS "Q1 2023",
    SUM(CASE WHEN quarter = 'Q2 2023' THEN expec_rev_qtr ELSE 0 END) AS "Q2 2023"
FROM sales;

--Which regions made the most sales YTD?

SELECT
	si.store_location AS regions,
	SUM(gross_sales_qtr) AS total_sales
FROM sales s
LEFT JOIN store_info si
	ON s.coles_storeidno = si.coles_storeidno
GROUP BY 1
ORDER BY 2 DESC

--Which regions generated the highest average monthly sales?

SELECT
	si.store_location AS regions,
	ROUND(AVG(est_mthly_gross_sales),0) AS avg_sales_per_month
FROM sales s
LEFT JOIN store_info si
	ON s.coles_storeidno = si.coles_storeidno
GROUP BY 1
ORDER BY 2 DESC

--How many stores are in each region?

SELECT
	store_location AS regions,
	COUNT(coles_storeidno) AS store_count
FROM store_info
GROUP BY 1
ORDER BY 2 DESC

--Which regions have the highester customer density per store?

WITH avg_region_custcount AS (
SELECT
	store_location AS region,
	SUM(cust_count) AS avg_cust_count,
	AVG(store_area) AS avg_store_area
FROM store_info
GROUP BY 1
ORDER BY 2 DESC
)

SELECT
	region,
	ROUND(SUM(avg_cust_count/avg_store_area),0) AS cust_density
FROM avg_region_custcount
GROUP BY 1
ORDER BY 2 DESC

--What are the average store sizes for each region?

SELECT
	store_location,
	ROUND(AVG(store_area),0) AS avg_store_size
FROM store_info
GROUP BY 1
ORDER BY 2 DESC



