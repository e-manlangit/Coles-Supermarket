# Project-Background
Coles Supermarket, established in 1914, is a leading Australian retail chain offering a wide range of products, including fresh produce, liquor, essential items, and financial services such as credit cards.

The company provided sufficient information on geographical information, sales performance, such as, gross sales, sales cost, and expected revenue from Q1 to Q2 in FY23. No information was provided on the range of products that contributed to the gross sales. Additional columns were built manually to find the estimated monthly totals for gross sales and sales cost. This will help provide a better overview for performance evaluations for each region. The findings synthesize critical insights aimed at enhancing Coles' operational success and driving future growth.

Key insights and recommendations are provided on the following key areas:

  - Regional Sales Performance Analysis: A comprehensive evaluation of sales performance by region.

An interactive PowerBI dashboard can be downloaded here

The SQL queries utilized to inspect and perform quality checks can be found here.

The SQL queries utilized to clean, organize, and prepare data for the dashboard can be found here.

Targeted SQL queries regarding various business questions can be found here

# Data Structure & Initial Checks
Coles data structure consists of a table for sales data (sales) and another for store data (store_info), with a total row count of 683 records:

Sales:
- Coles_storeidno: Unique ID
- Expec_rev_qtr: Expected revenue for each store per quarter
- Gross_sales_qtr: Gross sales for each store per quarter
- Sales_cost_qtr: Cost incurred after a sales has occurred per quarter
- Est_mthly_gross_sales: Estimated monthly gross sales
- Est_mthly_sales_cost: Estimated monthly sales cost
- Quarter: Specific quarter within a fiscal year
- Coles_forecast: Evaluates if the store's net sales (Gross_Sale - Sales_Cost) meet the expected revenue. If net sales meet or exceed the target, they are "On Target"; if not, they are "Below Target."

Store_info:
- Coles_storeid: Unique ID
- Store_location: Information on the store’s region
- Cust_count: Average customer count per store
- Staff_count: Number of employees who work at the stores
- Store_area: Store size, expressed in square meters

![sales_datastructure](https://github.com/user-attachments/assets/290af041-e441-4736-8d4e-3d2b46d9603b) ![stores_datastructure](https://github.com/user-attachments/assets/eccf1cab-b227-4177-b602-1712bb8ef26c)

Store location is listed as their abbreviated names. Below are the names of the abbreviations:

Store location abbrevations:
- ACT: Australian Capital Territory
- NSW: New South Wales
- NT: Northern Territory
- QLD: Queensland
- SA: South Australia
- TAS: Tasmania
- VIC: Victoria
- WA: Western1 Australia

# Executive Summary

###  Overview of Findings

Coles performed relatively well through the two quarters in FY23. Gross sales exceeded revenue expectations YTD by 21.89%. Sales in Q1 exceeded expectations by 24.2% in Q1 and 19.6% in Q2. Although sales appear to have exceeded expectations, sales declined by 4.9% from Q1 to Q2; however, the company did anticipate a slight decrease in sales based on expectations. This could be attributed to standard seasonal declines between the two quarters or economic pressures due to inflation. The following sections will export additional contributing factors and highlight key opportunity areas for improvement.

Below is the overview page from the PowerBI dashboard and more examples are included throughout the report. The entire interactive dashboard can be downloaded here.

![Alt text]()

## Sales Trends:

- 77% of the company’s total sales were from just three regions: Victoria, New South Wals and Queensland. These three regions accounted for $7.5B in revenue per month, in addition to having over 100 stores.

- The Northern Territory consistently leads in average monthly sales, outperforming other regions by up to 8%, despite having only 10 stores. Similarly, the Australian Capital Territory, with just 13 stores, also exceeded the average sales performance of other regions.

## Customer Density:

- Victoria and New South Wales have the highest customer density, with over 1,100 customers per square meter. Despite this, Victoria's stores are smaller, averaging 1,886 square meters, while New South Wales stores are slightly larger at 1,926 square meters.

- Stores in the Northern Territory and Australian Capital Territory are 3-5% larger, with 65-100 more square meters on average. Additionally, the Northern Territory, Australian Capital Territory, and Tasmania are underutilized, with a very low customer density of less than 100 customer per square meter.
- 
![Alt text](https://github.com/e-manlangit/coles_supermarket_datastructure/blob/main/Coles%20Region%20Performance.jpg?raw=true)

### Recommendations:

Based on the uncovered insights, the following recommendations have been provided:

- With 85% of orders and 70% of revenue coming from just three products, diversifying the product portfolio is crucial. **Expanding the accessory category with new product lines, particularly Apple charging cables, would provide upsell opportunities.**

- Despite the general sales success of Apple products, iPhone sales have been disappointingly low (1% of revenue in 2022). **Enhancing marketing efforts to previous Apple product buyers could boost sales.**

- Look to capitalize on the growing share of Samsung accessories (32% of order count in 2022) by **introducing higher-cost Samsung products in already carried product categories such as laptops and cellphones.**

- **Re-evaluate Bose SoundSport Headphones**. As the product has never made up more than 1% of annual revenue, attempt to sell through the product by implementing bundle offers and flash sales to non-Apple ecosystems loyalty members before discontinuing.

- **Continue and push forward the loyalty program.** In order to convert non-members, considering offering a one-time sign-up discount paired with increased general marketing of membership benefits and savings. Focus targeted and personalized ads to previous customers, and utilize past order data to increase marketing efforts when previously purchased products may need replacing.



