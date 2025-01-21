# Project-Background
Coles Supermarket, founded in 1914, is an Australian supermarket chain that sells produce, liquor, essential items, and financial services, such as credit cards.

The company provided information from Q1 and Q2 from FY23 on store performance, geographics, and revenue and sales performance. This project thoroughly analyzes and synthesizes this over critical insights that will improve Coles' success.

Insights and recommendations are provided on the following key areas:

  - Sales Trend Analysis: Evaluation of historical sales patterns, both globally and by region, focusing on Revenue, Order Volume, and Average Order Value (AOV).
  - Store Performance: An analysis on Cole's store locations and understanding their impact on sales and returns

An interactive PowerBI dashboard can be downloaded here

The SQL queries utilized to inspect and perform quality checks can be found here.

The SQL queries utilized to clean, organize, and prepare data for the dashboard can be found here.

Targeted SQL queries regarding various business questions can be found here

# Data Structure & Initial Checks
Cole's data structure as seen below consists of two tables: sales and store data, with a total row count of 683 records: 

  - Sales data: row num, store id, expected revenue, gross sales, sales cost, targeted quarter, forecast
  - Store data: row num, store id, store location, customer count, staff count, store area
    
![sales_datastructure](https://github.com/user-attachments/assets/290af041-e441-4736-8d4e-3d2b46d9603b)

![stores_datastructure](https://github.com/user-attachments/assets/eccf1cab-b227-4177-b602-1712bb8ef26c)

# Executive Summary

###  Overview of Findings

In FY23, the company performed relatively well based on the limited information provided. Sales exceeded expectations by 24.2% in Q1 and 19.6% in Q2. Although sales exceeded expectations, sales declined from Q1 compared to Q2. Gross sales indicate a 5% decrease from Q1 to Q2 even after additional stores were included in a new location. While this decline could be attributed to an increase in inflation, the following sections will explore additional contributing factors and highlight key opportunity areas. The following sections will export additional contributing factors and highlight key opportunity areas for improvement.

Below is the overview page from the PowerBI dashboard and more examples are included throughout the report. The entire interactive dashboard can be downloaded here.

(INSERT GRAPHS)

## Sales Trends:

- Stores in VIC, NSW, and QLD made up more than 20% of sales and generated up to 30% of overall customers in Q1.

- 

Example:
### Sales Trends:

- The company's sales peaked in December 2020 with 4,019 orders totaling X monthly revenue. This corresponds with the boom in economy-side spending due to pandemic-induced changing consumer behavior.

- Despite the downward trend, full-year 2022 remained above the pre-COVID 2019 baseline in all three key performance indicators. This is primarily due to the stronger 1Q22, which recorded revenue and order count well above the same period in 2020, up 37% and 23% respectively.

- Average order value saw a one-month year-over-year increase in September 2022, this can be attributed to an increased share of high-cost laptop orders

(INSERT CHART)

### Product Performance:

- 85% of the company's orders are from just three products, Gaming Monitor, Apple Airpods Headphones and Samsung Charging Cable Pack. These three products accounted for $3.5 million in revenue in 2022, 70% of the company's total.

- In the headphones category, the Bose SoundSport Headphones have underperformed, contributing to less than 1% of total revenues and orders despite being on average, $40 cheaper than the well-performing Airpods.

- The accessory category continues to grow as share of orders, now at 32% in 2022, up from 21% in 2020, however, the accessories remain less than 4% of their revenue.

(INSERT CHART)

### Recommendations:

Based on the uncovered insights, the following recommendations have been provided:

- With 85% of orders and 70% of revenue coming from just three products, diversifying the product portfolio is crucial. **Expanding the accessory category with new product lines, particularly Apple charging cables, would provide upsell opportunities.**

- Despite the general sales success of Apple products, iPhone sales have been disappointingly low (1% of revenue in 2022). **Enhancing marketing efforts to previous Apple product buyers could boost sales.**

- Look to capitalize on the growing share of Samsung accessories (32% of order count in 2022) by **introducing higher-cost Samsung products in already carried product categories such as laptops and cellphones.**

- **Re-evaluate Bose SoundSport Headphones**. As the product has never made up more than 1% of annual revenue, attempt to sell through the product by implementing bundle offers and flash sales to non-Apple ecosystems loyalty members before discontinuing.

- **Continue and push forward the loyalty program.** In order to convert non-members, considering offering a one-time sign-up discount paired with increased general marketing of membership benefits and savings. Focus targeted and personalized ads to previous customers, and utilize past order data to increase marketing efforts when previously purchased products may need replacing.



