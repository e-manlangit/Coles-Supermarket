-- Copy of tables

CREATE TABLE sales_data_copy
LIKE sales_data;

CREATE TABLE store_data_copy
LIKE store_data;

INSERT sales_data_copy
SELECT *
FROM sales_data;

INSERT store_data_copy
SELECT *
FROM store_data;

-- Null Check

SELECT
	SUM(CASE WHEN coles_storeidno IS NULL THEN 1 ELSE 0 END) AS null_count_storeidno,
	SUM(CASE WHEN expec_revenue IS NULL THEN 1 ELSE 0 END) AS null_count_expec_rev,
	SUM(CASE WHEN gross_sale IS NULL THEN 1 ELSE 0 END) AS null_count_gross_sale,
	SUM(CASE WHEN sales_cost IS NULL THEN 1 ELSE 0 END) AS null_count_sales_cost,
	SUM(CASE WHEN targeted_quarter IS NULL THEN 1 ELSE 0 END) AS null_count_targ,
	SUM(CASE WHEN coles_forecast IS NULL THEN 1 ELSE 0 END) AS null_count_forecast
FROM sales_data_copy;

SELECT
	SUM(CASE WHEN store_location IS NULL THEN 1 ELSE 0 END) AS null_location,
	SUM(CASE WHEN customer_count IS NULL THEN 1 ELSE 0 END) AS null_cuscount,
	SUM(CASE WHEN staff_count IS NULL THEN 1 ELSE 0 END) AS null_staffcount,
	SUM(CASE WHEN store_area IS NULL THEN 1 ELSE 0 END) AS null_storearea
FROM store_data_copy;

-- Duplicate check on first table

SELECT *,
	ROW_NUMBER () OVER(
	PARTITION BY row_num, coles_storeid, store_location, customer_count, staff_count, store_area) AS row_number
FROM store_data_copy;

WITH duplicate_store AS
(
SELECT *,
	ROW_NUMBER () OVER(
	PARTITION BY row_num, coles_storeid, store_location, customer_count, staff_count, store_area) AS row_number
FROM store_data_copy
)
	
SELECT *
FROM duplicate_store
WHERE row_number > 1;

-- Duplicate check on second table

SELECT *,
	ROW_NUMBER () OVER (
	PARTITION BY row_num, coles_storeidno, expec_revenue, gross_sale, sales_cost, targeted_quarter, coles_forecast) AS row_number
FROM sales_data_copy;

WITH dup_sales AS 
(
SELECT *,
	ROW_NUMBER () OVER (
	PARTITION BY row_num, coles_storeidno, expec_revenue, gross_sale, sales_cost, targeted_quarter, coles_forecast) AS row_number
FROM sales_data_copy
)

SELECT *
FROM dup_sales
WHERE row_number > 1;

-- Removing nulls / redundant rows

DELETE FROM sales_data_copy
WHERE row_num = 'Row_Num'; 


DELETE FROM store_data_copy
WHERE row_num IS NULL;

DELETE FROM sales_data_copy
WHERE sales_cost IS NULL

DELETE FROM store_data_copy
WHERE customer_count IS NULL

-- Distinct checks on TEXT data

SELECT DISTINCT (coles_forecast)
FROM sales_data_copy

SELECT DISTINCT (targeted_quarter)
FROM sales_data_copy

SELECT DISTINCT (coles_storeidno)
FROM sales_data_copy
ORDER BY 1 ASC

--Altering columns from TEXT to INT
	
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name =  'sales_data_copy';

ALTER TABLE sales_data_copy
ALTER COLUMN expec_revenue TYPE INTEGER USING expec_revenue:: INTEGER,
ALTER COLUMN gross_sale TYPE INTEGER USING gross_sale:: INTEGER,
ALTER COLUMN sales_cost TYPE INTEGER USING
	CASE 
		WHEN sales_cost = 'NA' THEN NULL
		ELSE sales_cost:: INTEGER
	END;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name =  'store_data_copy';

ALTER TABLE store_data_copy
ALTER COLUMN staff_count TYPE INTEGER USING staff_count:: INTEGER,
ALTER COLUMN store_area TYPE INTEGER USING store_area:: INTEGER,
ALTER COLUMN customer_count TYPE INTEGER USING
	CASE 
		WHEN customer_count = 'NA' THEN NULL
		ELSE customer_count:: INTEGER
	END;

