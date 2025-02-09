-- Null Check

SELECT
	SUM(CASE WHEN coles_storeidno IS NULL THEN 1 ELSE 0 END) AS null_count_storeidno,
	SUM(CASE WHEN expec_rev_qtr IS NULL THEN 1 ELSE 0 END) AS null_count_expec_rev_qtr,
	SUM(CASE WHEN gross_sales_qtr IS NULL THEN 1 ELSE 0 END) AS null_count_sales_qtr,
	SUM(CASE WHEN est_mthly_gross_sales IS NULL THEN 1 ELSE 0 END) AS null_count_mthly_sales,
	SUM(CASE WHEN est_mthly_sales_cost IS NULL THEN 1 ELSE 0 END) AS null_count_mthly_cost,
	SUM(CASE WHEN quarter IS NULL THEN 1 ELSE 0 END) AS null_count_quarter,
	SUM(CASE WHEN coles_forecast IS NULL THEN 1 ELSE 0 END) AS null_count_forecast
FROM sales;

SELECT
	SUM(CASE WHEN coles_storeid IS NULL THEN 1 ELSE 0 END) AS null_storeid,
	SUM(CASE WHEN store_location IS NULL THEN 1 ELSE 0 END) AS null_location,
	SUM(CASE WHEN cust_count IS NULL THEN 1 ELSE 0 END) AS null_custcount,
	SUM(CASE WHEN staff_count IS NULL THEN 1 ELSE 0 END) AS null_staffcount,
	SUM(CASE WHEN store_area IS NULL THEN 1 ELSE 0 END) AS null_storearea
FROM store_info;

-- Replacing Null Values

SELECT COALESCE(cust_count, 0) AS result
FROM store_info
UNION ALL
SELECT COALESCE(est_mthly_sales_cost, 0) AS result
FROM sales;

-- Duplicate check on first table

SELECT *,
	ROW_NUMBER () OVER(
	PARTITION BY coles_storeid, store_location, cust_count, staff_count, store_area) AS row_number
FROM store_info;

WITH duplicate_store AS
(
SELECT *,
	ROW_NUMBER () OVER(
	PARTITION BY coles_storeid, store_location, cust_count, staff_count, store_area) AS row_number
FROM store_info
)
	
SELECT *
FROM duplicate_store
WHERE row_number > 1;

-- Duplicate check on second table

SELECT *,
	ROW_NUMBER () OVER (
	PARTITION BY coles_storeidno, expec_revenue_qtr, gross_sales_qtr, sales_cost_qtr, es_mthly_gross_sales, est_mthly_sales_cost, quarter, coles_forecast) AS row_number
FROM sales;

WITH dup_sales AS 
(
SELECT *,
	ROW_NUMBER () OVER (
	PARTITION BY coles_storeidno, expec_revenue_qtr, gross_sales_qtr, sales_cost_qtr, es_mthly_gross_sales, est_mthly_sales_cost, quarter, coles_forecast) AS row_number
FROM sales;
)

SELECT *
FROM dup_sales
WHERE row_number > 1;

-- Distinct checks on TEXT data

SELECT DISTINCT (coles_forecast)
FROM sales

SELECT DISTINCT (targeted_quarter)
FROM sales

SELECT DISTINCT (coles_storeidno)
FROM sales
ORDER BY 1 ASC
