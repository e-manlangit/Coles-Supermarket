--CREATE A COPY TABLE FOR EDITS--

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

SELECT *
FROM store_data_copy;

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

SELECT *
FROM sales_data_copy;

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

-- DELETE EXTRA COLUMNS --
SELECT *
FROM sales_data_copy
WHERE row_num = 'Row_Num';

DELETE FROM sales_data_copy
WHERE row_num = 'Row_Num'; 

SELECT *
FROM store_data_copy
WHERE row_num IS NULL;

DELETE FROM store_data_copy
WHERE row_num IS NULL;

-- STANDARDIZING DATA --

SELECT *
FROM sales_data_copy sl
LEFT JOIN store_data_copy st
ON sl.coles_storeidno = st.coles_storeid;

SELECT DISTINCT (coles_forecast)
FROM sales_data_copy

--NO TRIM OR UPDATES NEEDED--


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

