# Project-Background
Coles Supermarket, established in 1914, is a leading Australian retail chain offering a wide range of products, including fresh produce, liquor, essential items, and financial services such as credit cards.

The company provided sufficient information on geographical information, sales performance, such as, gross sales, sales cost, and expected revenue from Q1 to Q2 in FY23. No information was provided on the range of products that contributed to gross sales. Additional columns were built manually to find the estimated monthly totals for gross sales and sales cost. This will help provide a better overview for performance evaluations for each region. The findings synthesize critical insights aimed at enhancing Coles' operational success and driving future growth.

Key insights and recommendations are provided on the following key areas:

  - Regional Sales Performance Analysis: A comprehensive evaluation of sales performance by region.

_An interactive PowerBI dashboard can be downloaded [here](https://github.com/e-manlangit/Coles-Supermarket/raw/refs/heads/main/Coles%20Dashboard.pbix)_

_The SQL queries utilized to inspect and perform quality checks can be found [here](https://github.com/e-manlangit/Coles-Supermarket/blob/main/SQL%20Queries/Data%20Cleaning%20for%20Analysis.sql)._
  - _No issues were observed on the worksheet_

_Targeted SQL queries regarding various business questions can be found [here](https://github.com/e-manlangit/Coles-Supermarket/blob/main/SQL%20Queries/Targeted%20Business%20Questions.sql)_

# Data Structure & Initial Checks
Coles data structure consists of a table for sales data (sales) and another for store data (store_info), with a total row count of 683 records:

**Sales**:
- **Coles_storeidno**: *Unique ID*
- **Expec_rev_qtr**: *Expected revenue for each store per quarter*
- **Gross_sales_qtr**: *Gross sales for each store per quarter*
- **Sales_cost_qtr**: *Cost incurred after a sales has occurred per quarter*
- **Est_mthly_gross_sales**: *Estimated monthly gross sales*
- **Est_mthly_sales_cost**: *Estimated monthly sales cost*
- **Quarter**: *Specific quarter within a fiscal year*
- **Coles_forecast**: *Evaluates if the store's net sales (Gross_Sale - Sales_Cost) meet the expected revenue. If net sales meet or exceed the target, they are "On Target"; if not, they are "Below Target."*

**Store_info**:
- **Coles_storeid**: *Unique ID* 
- **Store_location**: *Information on the store’s region*
- **Cust_count**: *Average customer count per store*
- **Staff_count**: *Number of employees who work at the stores*
- **Store_area**: *Store size, expressed in square meters*

![sales_datastructure](https://github.com/user-attachments/assets/290af041-e441-4736-8d4e-3d2b46d9603b) ![stores_datastructure](https://github.com/user-attachments/assets/eccf1cab-b227-4177-b602-1712bb8ef26c)

Store location is listed as their abbreviated names. Below are the names of the abbreviations:

- **ACT**: *Australian Capital Territory*
- **NSW**: *New South Wales*
- **NT**: *Northern Territory*
- **QLD**: *Queensland*
- **SA**: *South Australia*
- **TAS**: *Tasmania*
- **VIC**: *Victoria*
- **WA**: *Western Australia*

# Executive Summary

###  Overview of Findings

Coles performed relatively well through the two quarters in FY23. Gross sales exceeded expectations YTD by 21.89%. Sales in Q1 exceeded expectations by 24.2% in Q1 and 19.6% in Q2. Although sales appear to have exceeded expectations, sales declined by 4.9% from Q1 to Q2; however, the company did anticipate a slight decrease in sales based on expectations. This could be attributed to standard seasonal declines between the two quarters or economic pressures due to inflation. The following sections will provide additional contributing factors and highlight key opportunity areas for improvement.

*Below is the overview page from the PowerBI dashboard and more examples are included throughout the report. The entire interactive dashboard can be downloaded [here](https://github.com/e-manlangit/Coles-Supermarket/raw/refs/heads/main/Coles%20Dashboard.pbix).*

![Alt text](https://github.com/e-manlangit/coles_supermarket_datastructure/blob/main/Coles%20Overview.jpg?raw=true)

### Sales Trends:

- 77% of the company’s total sales were from just three regions: Victoria, New South Wals and Queensland. These three regions accounted for $7.5B in revenue per month, in addition to having over 100 stores.

- The Northern Territory consistently leads in average monthly sales, outperforming other regions by up to 8%, despite having only 10 stores. Similarly, the Australian Capital Territory, with just 13 stores, also exceeded the average sales performance of other regions.

### Customer Density:

- Victoria and New South Wales have the highest customer density, with over 1,100 customers per square meter. Despite this, Victoria's stores are smaller, averaging 1,886 square meters, while New South Wales stores are slightly larger at 1,926 square meters.

- Stores in the Northern Territory and Australian Capital Territory are 3-5% larger, with 65-100 more square meters on average. Additionally, the Northern Territory, Australian Capital Territory, and Tasmania are underutilized, with a very low customer density of less than 100 customer per square meter.

![Alt text](https://github.com/e-manlangit/coles_supermarket_datastructure/blob/main/Coles%20Region%20Performance%20(1).jpg?raw=true)

### Recommendations:

Based on the uncovered insights, the following recommendations have been provided:

- **Consider conducting additional market research and cost analysis to add stores in the Northern Territory and the Australian Capital Territory.** Both regions are leading in average monthly sales and would provide growth opportunities.

- With stores in Austalian Capital Territory, Northern Territory, and Tasmania having above average store sizes and low customer density, increasing foot traffic is crucial. **Enhancing marketing efforts and offer special promotions to the existing stores could drive sales.**

