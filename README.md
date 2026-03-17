# Analyzing Customer Churn and Retention Patterns in a UK-Based Multinational Retail Bank
![](./Images/bank_image_1.png)
## Project Description
Designed and delivered a churn analytics and customer segmentation solution by engineering structured features in SQL and developing executive Power BI dashboards to identify behavioral, geographic, and financial risk drivers. Analysed a 10,000-customer portfolio with a 13.85% churn rate (£271M revenue base), building a risk-based intervention framework that could reduce churn by 3%, protecting an estimated £5M+ in revenue while enabling data-driven retention targeting and improved customer lifetime value.
## Overview
Veritas Bank was experiencing rising customer attrition in a highly competitive retail banking market, particularly in Germany and France where digital-first competitors and fintech firms were rapidly gaining market share.
-  Despite having access to large volumes of customer data, the bank lacked structured behavioral segmentation and real-time churn visibility, limiting its ability to identify at-risk customers early and implement proactive retention strategies. 
- This project was initiated to bridge the gap between raw transactional data and strategic decision-making. By consolidating customer demographic, financial, and engagement data into a structured analytical model, the project transformed fragmented datasets into a unified churn intelligence framework.
- The focus was not only on identifying who churned, but understanding why churn was occurring, which customer segments were most vulnerable, and what behavioral patterns signaled early disengagement. Through advanced data modeling and interactive Power BI reporting, the project provided leadership with clear visibility into churn drivers across geography, age groups, product usage, and engagement levels — enabling data-driven retention planning instead of reactive customer recovery
## Rationale For The Project
Customer churn directly impacts revenue and long-term profitability in retail banking. Understanding which customers are likely to churn and why, allows organizations to intervene early, personalize engagement, and improve retention. This project provides a data-driven foundation for customer lifecycle management and strategic decision-making.
## Aim Of The Project
The primary aim of this project was to design and implement a data-driven churn analysis framework that enables Veritas Bank to proactively reduce customer attrition and protect revenue. Specifically, the project sought to: 
- Identify key demographic, behavioral, and financial factors influencing customer churn 
- Segment customers based on churn risk to support targeted retention strategies 
- Develop a structured analytical dataset optimized for reporting and future predictive modeling 
- Provide interactive dashboards that allow stakeholders to monitor churn trends in real time 
- Translate analytical insights into actionable recommendations for marketing, customer experience, and product teams 

Ultimately, the project aimed to shift the organization from a reactive churn response model to a proactive, insight-led retention strategy — improving customer lifetime value, increasing engagement, and strengthening competitive positioning in key European markets.
## Project Scope
- Database setup and data importation 
- Data quality checks and exploratory data analysis 
- Feature engineering and churn-related column derivation 
- Creation of analytical views and segmentation tables 
- Power BI dashboard development (Demographics & Churn Analysis)
- Insight summarization and presentation for stakeholders

## Project Images
![](./Images/Overview.png)
![](./Images/Churn%20Status.png)
![](./Images/data_model.png)
## Interactive Power BI Dashboard
Click below to explore the live dashboard
- [View dashboard](https://app.powerbi.com/view?r=eyJrIjoiMDkzNDgxYzItOWYyYi00YjYzLThjOTAtNjU5ZDhlZmFhZTE4IiwidCI6ImZmMGYzZTNhLTNlNTMtNDU0Zi1iMmI1LTZjNjg3NTNiOGVlNCJ9)

## Datasets
- [Find the first dataset here](./Dataset/AccountInfo.xlsx%20-%20AccountInfo.csv.csv)
- [Find the second dataset here](./Dataset/CustomerInfo.xlsx%20-%20CustomerInfo.csv.csv)

## SQL Queries used in This Project
Below are key SQL queries used for data extraction and transformation
- [Data Quality Checks](./Queries/data_quality_checks.sql)
- [Column Derivations](./Queries/column%20derivations.sql)
- [Customer segmentation](./Queries/customer_segmentations.sql)

## Insights
- Our customer base is heavily concentrated in the UK (50%), establishing it as the dominant region
- Most customers are young or middle‑aged adults, reflecting a predominantly working-age population
- Germany and France have churn rates nearly double that of the UK, signalling localized experience gaps — likely in  digital engagement, service responsiveness, or product relevance
- Young and middle-aged adults represent the largest share of churn exposure.These digitally active, high-choice customers  are the primary targets of fintech competitors.
- Very low-balance customers churn the most frequently.
However, high-balance customers — though fewer — represent significantly higher revenue risk per customer
- Churn is heavily concentrated among inactive customers, making inactivity the strongest predictor of churn across all engagement levels
- Churn rates remain consistently high across all credit score categories and tenure segments, showing minimal variations. This suggests that neither financial profile nor length of relationship meaningfully protects customers from churn 
- Customers with credit cards show lower churn propensity.
## Strategic Recommendations
- Implement Real-time Churn Monitoring:
  - Create a High /Elevated / Medium / Low Risk score updated weekly.
  - Trigger automated alerts for high-risk customers
- Prioritize Germany and France with Market-Specific Retention Campaigns:
  - Conduct competitor benchmarking 
  - Launch targeted retention incentives (fee waivers, loyalty rewards).
  - Increase digital engagement campaigns 
- Shift Retention Strategy from Tenure-Based to Engagement-Based:
  - Monitor inactive customers monthly.
  - Deploy personalized reactivation offers (cashback, product upgrades).
- Adopt a Dual Retention Model (Volume vs Value Strategy):
  - Low balance customers: Use automated, low-cost digital retention nudges.
  - High balance customers: Assign relationship managers + loyalty incentives.
- Protect High-Value Segments with Early Intervention: 
Monitor behavioral changes (reduced transactions, declining activity).





