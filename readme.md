# AtliQ Mart Promotion Effectiveness Analysis: Driving Revenue Growth Through Smarter Promotional Strategies
  
  During the Diwali 2023 and Sankranti 2024 festive seasons, AtliQ Mart launched large-scale promotional campaigns across its 50 stores across Southern India.While the campaigns successfully increased customer demand, not all promotions contributed equally to business growth.   
This project investigates the effectiveness of various promotional strategies—including BOGOF, Cashback, and Percentage Discounts—to determine which offers generated sustainable revenue growth and which eroded profitability despite increasing sales volume.

## 📋 Table of Contents

- Project Overview
- Problem Statement
- Dataset Description
- Executive Summary
- Key Findings
- Recommendations
- Dashboard Preview
- Technical Implementation
- Conclusion

## 📌 Project Overview

**Project Type:** End-to-End Business Case Study

**Domain:** FMCG Retail & Consumer Promotions

**Business Function:** Sales & Promotional Strategy

**Campaigns Covered:** Diwali 2023 and Sankranti 2024

**Analysis Focus:**
- Campaign Performance Evaluation
- Promotion Effectiveness Analysis
- Revenue & Volume Impact Assessment
- Product & Category Performance
- Geographic Performance Analysis
- Strategic Business Recommendations

An interactive PowerBI dashboard can be downloaded here.  
The SQL queries utilized to inspect for feature engineering and to answer ad-hoc requests can be found here  
The video presentation of this project can be found here  
The linkedin post regarding this post can be found here. 
# Problem Statement 
**Business Goal**  
To identify the most effective promotional strategies, uncover growth opportunities across products and stores, and provide data-driven recommendations that help AtliQ Mart maximize revenue, improve promotional efficiency, and optimize future campaign planning.  
**Key Business Questions**    
    **Store Performance Analysis**  
- Which stores generated the highest Incremental Revenue (IR) during the promotional period?
- Which stores recorded the lowest Incremental Sold Units (ISU)?
- How did store performance vary across different cities?
- Are there common characteristics among top-performing stores that can be replicated across other locations?  
   
**Promotion Effectiveness Analysis**  
- Which promotion types generated the highest Incremental Revenue?
- Which promotion types had the weakest impact on Incremental Sold Units?
- How do percentage-discount promotions compare against Cashback and BOGOF promotions?
- Which promotional strategies provide the best balance between sales growth and revenue generation?  
  
**Product & Category Analysis**
- Which product categories experienced the greatest uplift in sales due to promotions?
- Which product–promotion combinations performed exceptionally well or poorly?
- How does promotion effectiveness vary across different product categories?
- Which categories and price segments present the strongest opportunities for future promotional campaigns?
# Executive Summary
AtliQ Mart, a leading FMCG retail chain with over 50 stores across Southern India, launched large-scale promotional campaigns during Diwali 2023 and Sankranti 2024 to drive customer demand and increase sales of its private-label products.

This analysis evaluated the effectiveness of various promotional strategies, including BOGOF, Cashback, and Percentage Discount offers, to determine their impact on sales volume, revenue growth, and overall business performance.

**Campaign Impact**  
  
- Units sold increased by 108.31% following promotional campaigns.
- Revenue increased by 76.25%, indicating strong demand generation but lower revenue growth relative to volume growth.
- Diwali 2023 delivered the highest revenue growth (94.12%), while Sankranti 2024 generated the highest increase in sales volume (155.31%).

# Dataset Description 
The analysis utilizes four tables containing campaigns, products, stores, and transaction-level promotional data  
     
<img width="945" height="684" alt="data model" src="https://github.com/user-attachments/assets/cffcc853-274d-4286-9da6-0ab1e70cb483" />


The project follows a star schema consisting of:  
+ fact_events (Fact Table)  
+ dim_campaigns  
+ dim_products  
+ dim_stores  

## Key Metrics & Definitions
**Promotion Types**  

**BOGOF (Buy One Get One Free)**  
Customers receive an additional product at no extra cost.  
Primarily designed to drive volume growth.  

**₹500 Cashback**  
Customers receive a fixed cashback incentive after purchase.  
Designed to encourage purchases while maintaining higher selling prices.  

**25%, 33%, and 50% Off**  
Percentage-based discount promotions applied directly to product prices.  
Intended to stimulate demand through price reductions.  
  
**Revenue Metrics**  
  
**Incremental Revenue (IR)** : Measures the additional revenue generated as a result of promotional campaigns.  
**Incremental Revenue Percentage (IR%)** : Measures the percentage change in revenue attributable to promotions.  
**Incremental Sold Units (ISU)** : Measures the additional units sold during the promotional period.  
**Incremental Sold Units Percentage (ISU%)**: Measures the percentage increase in units sold due to promotions.
    
**Price Segmentation**  
Products were categorized based on their price into five catgory -**100<, 100-250, 250-500, 500-1000 & 1000<**

## Analysis & Insights

The following analysis examines the impact of promotional campaigns from multiple business perspectives.
By analyzing promotion effectiveness, product and category performance, price sensitivity, store-level results, and geographic trends, this study aims to identify the factors that contributed to revenue growth and increased sales volume.

The insights presented below form the basis for the strategic recommendations outlined later in this report.
## Promotional Analysis 
<img width="1308" height="397" alt="1" src="https://github.com/user-attachments/assets/86e0f9f7-02c2-4f8a-8d79-f28d576debd5" />

+ The two campaigns exhibited distinct performance patterns. Diwali delivered stronger revenue growth, achieving a 94.12% increase in revenue and a 66.25% increase in units sold, indicating better monetization of promotional activities. In contrast, the Sankranti campaign generated a substantial 155.31% increase in sales volume but only a 50.87% increase in revenue, suggesting that demand growth was driven primarily by aggressive discounting rather than higher revenue generation.  
+ BOGOF (Buy One Get One Free) promotions generated the highest increase in sales volume, contributing more than 150,000 additional units sold and demonstrating strong customer responsiveness to value-based offers.
+ BOGOF emerged as the most effective promotion for driving customer purchases, followed by ₹500 Cashback offers. In contrast, the 25% discount promotion underperformed, resulting in a decline of approximately 5,000 units sold compared to other promotional strategies.
+ Although BOGOF generated the highest sales volume, ₹500 Cashback promotions delivered the greatest revenue growth, indicating a better balance between customer incentive and revenue retention.
+ Percentage-based discount promotions (25%, 33%, and 50% off) failed to generate positive incremental revenue despite increasing sales volume, suggesting that the additional demand generated was insufficient to compensate the reduction in selling price.

## Price Segment Analysis 
  
<img width="694" height="445" alt="ISU% inc by price group" src="https://github.com/user-attachments/assets/4cc6b91e-0793-40a6-8345-9b044f9dacf5" />

+ Premium-priced products (above ₹1,000) exhibited the highest increase in sales volume following promotions, indicating strong customer responsiveness within higher-value product segments.

## Category Performance
<img width="480" height="314" alt="3 (2)" src="https://github.com/user-attachments/assets/14f40239-e588-4724-9cc7-3469b3d47c85" />

+ The Combo category delivered strong performance across both incremental sales volume and incremental revenue metrics, making it one of the most effective product categories during promotional periods.
+ The 25% discount promotion consistently underperformed across all product categories, generating weak growth in both sales volume and revenue, indicating limited customer appeal and poor financial effectiveness.
+ BOGOF was the only promotional strategy that consistently generated positive incremental revenue across product categories. Although 33% and 50% discount offers increased sales volume, they failed to translate those gains into sustainable revenue growth.

## Store performance Analysis 
<img width="695" height="409" alt="image-4" src="https://github.com/user-attachments/assets/864a49c0-49fd-4bc0-99df-d51a4a9ffb87" />
 
The highest-performing stores achieved superior revenue growth primarily through the use of Cashback and BOGOF promotions, highlighting the effectiveness of these strategies at the store level.
## City Analysis
<img width="1114" height="289" alt="City Performance" src="https://github.com/user-attachments/assets/8551012e-a21d-4113-8c38-793bf3003336" />

Promotional campaigns generated positive revenue growth across all cities, demonstrating broad market effectiveness. Bengaluru, Chennai, and Hyderabad emerged as the strongest-performing markets, contributing the highest post-promotion sales volumes.

## Products Analysis
<img width="1409" height="811" alt="image-6" src="https://github.com/user-attachments/assets/f4276ad2-ea1e-410b-a83e-c99cab694656" />

+ The top-performing product–promotion combinations in terms of sales volume growth were largely associated with BOGOF offers, highlighting the effectiveness of this promotion type in stimulating customer demand. Product performance varied considerably depending on the promotion applied, suggesting that promotional strategy had a greater impact on outcomes than the products themselves.
+ Most of the lowest-performing product–promotion combinations were associated with the 25% discount offer, indicating that this promotion type consistently underperformed in driving additional demand. The same products often achieved better results under alternative promotions, emphasizing the importance of selecting the right promotional strategy.
# Recommendations
**1. Prioritize Cashback Promotions for Revenue Growth**  
**Evidence**
+ ₹500 Cashback generated the highest incremental revenue.
+ Top-performing stores relied heavily on Cashback promotions.  
**Recommendation**  
Increase the use of Cashback promotions, particularly for premium and high-margin products, as they provide a better balance between customer incentives and revenue generation.

**2. Use BOGOF for Volume Growth and Inventory Clearance**  
**Evidence**  
+ BOGOF generated the highest increase in units sold (>150k).
+ Top products by sales volume all used BOGOF.
+ BOGOF consistently delivered positive incremental revenue across categories.  
**Recommendation**  
Deploy BOGOF promotions when the objective is to drive sales volume, clear inventory, or attract customers rather than maximize revenue.

**3. Reduce Reliance on Percentage-Based Discounts**  
**Evidence**  
+ 25%, 33%, and 50% off promotions generated negative incremental revenue.
+ These promotions underperformed across campaigns and categories.  
**Recommendation**  
Minimize the use of deep discount offers and optimize pricing strategies by shifting toward Cashback and bundle-based promotions.

**4. Expand Promotions on Premium Products and Combo Categories**  
**Evidence**  
+ Products priced above ₹1,000 showed the highest increase in units sold.
+ Combo products performed strongly in both volume and revenue growth.  
**Recommendation**  
Increase promotional focus on premium products and combo offerings, as these segments demonstrate strong customer response and revenue potential.

**5. Redesign Promotion Strategy for the Personal Care Category**  
**Evidence**  
+ Personal Care was the worst-performing category in terms of incremental revenue (-34.4%).
+ It relied only on 25% and 50% discount promotions.  
**Recommendation**  
Introduce alternative promotional formats such as Cashback, BOGOF, and bundled products for the Personal Care category while avoiding deep discounts.

**6. Leverage Seasonal Campaigns More Effectively**  
**Evidence**  
+ Diwali delivered the strongest revenue growth.
+ Sankranti generated exceptional volume growth but comparatively lower revenue growth.  
**Recommendation**  
Use festive campaigns strategically: focus on revenue-oriented promotions during Diwali and volume-driven campaigns during periods similar to Sankranti.

**7. Allocate Marketing Resources to High-Performing Markets**  
**Evidence**  
+ Bengaluru, Chennai, and Hyderabad generated the highest post-promotion sales.
+ All cities experienced positive revenue growth.  
**Recommendation**  
Increase promotional investments in high-performing cities and replicate successful store-level strategies across lower-performing regions.
## Conclusion 
In conclusion, promotional campaigns significantly improved both revenue and customer demand. However, not all promotions delivered equal value.
The analysis showed that promotion effectiveness depends on business objectives. Cashback promotions were the most effective for revenue growth, while BOGOF promotions excelled at driving volume.
These insights can help AtliQ Mart design more efficient promotional strategies and maximize future campaign performance.


## ⚙️ Technical Implementation
Tools Used
+ SQL – Data extraction and business metric calculations.
+ Power BI – Interactive dashboard development and visualization.
+ Excel – Initial data exploration and validation.

You can find the sql script for feature engeneering and ad-hoq questions [here](https://github.com/krishnaShreeDeka/AtliQ-Mart-Promotion-Effectiveness-Analysis/blob/main/ad-hoc.sql)  
You can find the video presentation of this analysis [here](https://drive.google.com/file/d/1LB8FuJDHiceYwJ-sJZvSctwEGGPXmQ92/view?usp=drive_link)    
You can find the likedin post for this project [here](https://www.linkedin.com/posts/krishna-shree-deka-360975363_promotion-effectiveness-analysis-ugcPost-7476236200236695552-hsfu/?utm_source=share&utm_medium=member_desktop&rcm=ACoAAFpgtrgBVbz9C6DOSB5JUJ_HfnioSDv1UTs)  
The power bi dashboard of this project can be found [here](https://github.com/krishnaShreeDeka/AtliQ-Mart-Promotion-Effectiveness-Analysis/blob/main/campaign_analysis.pbix)   
The presenation pdf can be found [here](https://github.com/krishnaShreeDeka/AtliQ-Mart-Promotion-Effectiveness-Analysis/blob/main/Promotion%20Effectiveness%20Analysis%20(1).pdf)  
  




## Contact
**Krishna Shree Deka**  
Junior Data Analyst  
📩Krishnashrideka2018@gmail.com  
[🔗linkedin](www.linkedin.com/in/krishna-shree-deka-360975363/)










 


















