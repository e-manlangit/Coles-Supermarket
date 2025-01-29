# Project-Background
Coles Supermarket, established in 1914, is a leading Australian retail chain offering a wide range of products, including fresh produce, liquor, essential items, and financial services such as credit cards.

The company provided information on store performance, geographics, and revenue and sales performance from Q1 to Q2 in FY23. The findings synthesize critical insights aimed at enhancing Coles' operational success and driving future growth.

Key insights and recommendations are provided on the following key areas:

  - Sales Trend and Store Performance Analysis: A comprehensive evaluation of sales performance by region and Coles' locations based on customer volume.

An interactive PowerBI dashboard can be downloaded here

The SQL queries utilized to inspect and perform quality checks can be found here.

The SQL queries utilized to clean, organize, and prepare data for the dashboard can be found here.

Targeted SQL queries regarding various business questions can be found here

# Data Structure & Initial Checks
Cole's data structure as seen below consists of two tables: sales and store data, with a total row count of 683 records: 

  - Sales data: row num, store id, expected revenue, gross sales, sales cost, targeted quarter, forecast
  - Store data: row num, store id, store location, customer count, staff count, store area

Store location abbrevations:
- ACT: Australian Capital Territory
- NSW: New South Wales
- NT: Northern Territory
- QLD: Queensland
- SA: South Australia
- TAS: Tasmania
- VIC: Victoria
- WA: Western1 Australia
    
![sales_datastructure](https://github.com/user-attachments/assets/290af041-e441-4736-8d4e-3d2b46d9603b)

![stores_datastructure](https://github.com/user-attachments/assets/eccf1cab-b227-4177-b602-1712bb8ef26c)

# Executive Summary

###  Overview of Findings

The company performed relatively well based on the limited information provided. Gross sales exceeded revenue expectations YTD by 21.89%. Stores that reported sales in Q1 exceeded expectations by 24.2% in Q1 and 19.6% in Q2. Although sales appear to have exceeded expectations, sales declined by 5% from Q1 to Q2. This could be attributed to reporting inconsistencies as stores did not report sales did not report for both quarters. The following sections will export additional contributing factors and highlight key opportunity areas for improvement.

!https://github.com/e-manlangit/coles_supermarket_datastructure/blob/main/Coles%20Overview.jpg?raw=true

## Sales Trends:

- Stores in Victoria, New South Wales and Queensland have generated the most foot traffic in the country and have generated over 20% of gross sales YTD. This could be attributed to the numbers of stores in the region.

- Victoria, New South Wales, and Queensland has over 100 stores in the regions. All other regions have less than 100 stores, which could be a factor of the low sales.

Below is the overview page from the PowerBI dashboard and more examples are included throughout the report. The entire interactive dashboard can be downloaded here.

![Alt text](https://github.com/e-manlangit/coles_supermarket_datastructure/blob/main/Coles%20Overview.jpg?raw=true)

### Recommendations:

Based on the uncovered insights, the following recommendations have been provided:

- With 85% of orders and 70% of revenue coming from just three products, diversifying the product portfolio is crucial. **Expanding the accessory category with new product lines, particularly Apple charging cables, would provide upsell opportunities.**

- Despite the general sales success of Apple products, iPhone sales have been disappointingly low (1% of revenue in 2022). **Enhancing marketing efforts to previous Apple product buyers could boost sales.**

- Look to capitalize on the growing share of Samsung accessories (32% of order count in 2022) by **introducing higher-cost Samsung products in already carried product categories such as laptops and cellphones.**

- **Re-evaluate Bose SoundSport Headphones**. As the product has never made up more than 1% of annual revenue, attempt to sell through the product by implementing bundle offers and flash sales to non-Apple ecosystems loyalty members before discontinuing.

- **Continue and push forward the loyalty program.** In order to convert non-members, considering offering a one-time sign-up discount paired with increased general marketing of membership benefits and savings. Focus targeted and personalized ads to previous customers, and utilize past order data to increase marketing efforts when previously purchased products may need replacing.



