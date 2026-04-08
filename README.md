# Customer Churn and Retention Analytics for a UK-Based Multinational Retail Bank
![](./Images/bank_image_1.png)
## Project Description
A full churn intelligence and customer segmentation solution engineered using SQL and Power BI to help Veritas Bank identify at‑risk customers, understand churn drivers, and implement proactive retention strategies. The solution analyzed a 10,000‑customer portfolio with a 13.85% churn rate (£271M revenue base) and delivered a risk‑based intervention framework capable of reducing churn by an estimated 3% — protecting £5M+ in annual revenue.

---
## Overview
Veritas Bank, a UK‑based multinational retail bank, faced rising customer attrition across key European markets — particularly Germany and France, where digital‑first competitors and fintech challengers were rapidly gaining ground.

Despite having extensive customer data, the bank lacked:
- Structured behavioral segmentation
- Real-time churn visibility
- A unified analytical dataset
- Clear understanding of churn drivers

This project transformed fragmented demographic, financial, and engagement data into a centralized churn intelligence framework, enabling leadership to:
- Identify who is churning
- Understand why churn occurs
- Detect early behavioral warning signals
- Target high‑risk segments with precision
- Shift from reactive recovery to proactive retention
Through SQL‑based feature engineering and interactive Power BI dashboards, the project delivered a complete analytical foundation for customer lifecycle management and strategic decision‑making.

---
## Rationale For The Project
Customer churn directly impacts profitability, revenue stability, and long‑term customer lifetime value.
A data‑driven churn framework enables banks to:
- Detect early disengagement
- Personalize retention strategies
- Improve customer experience
- Protect high‑value segments
- Strengthen competitive positioning
This project provides Veritas Bank with the analytical infrastructure required to transition from intuition‑driven decisions to evidence‑based retention strategy.

---
## Project Objectives
The project aimed to design and implement a scalable churn analytics solution that would:
- Identify demographic, behavioral, and financial factors influencing churn
- Segment customers by churn risk to support targeted interventions
- Build a structured analytical dataset optimized for reporting and predictive modeling
- Deliver interactive Power BI dashboards for real‑time churn monitoring
- Translate insights into actionable recommendations for marketing, CX, and product teams
Ultimately, the goal was to move the bank from reactive churn response to proactive, insight‑led retention.

---
## Project Scope
- Database setup and data importation 
- Data quality checks and exploratory data analysis 
- Feature engineering and churn-related column derivation 
- Creation of analytical views and segmentation tables 
- Power BI dashboard development (Demographics & Churn Analysis)
- Insight synthesis and stakeholder presentation

---
## Project Images
![](./Images/Overview.png)
![](./Images/Churn%20Status.png)
![](./Images/data_model.png)
## Interactive Power BI Dashboard
Click below to explore the live dashboard
- [View dashboard](https://app.powerbi.com/view?r=eyJrIjoiMDkzNDgxYzItOWYyYi00YjYzLThjOTAtNjU5ZDhlZmFhZTE4IiwidCI6ImZmMGYzZTNhLTNlNTMtNDU0Zi1iMmI1LTZjNjg3NTNiOGVlNCJ9)

---
## Datasets
- [Find the first dataset here](./Dataset/AccountInfo.xlsx%20-%20AccountInfo.csv.csv)
- [Find the second dataset here](./Dataset/CustomerInfo.xlsx%20-%20CustomerInfo.csv.csv)

---
## SQL Queries used in This Project
Below are key SQL queries used for data extraction and transformation
- [Data Quality Checks](./Queries/data_quality_checks.sql)
- [Column Derivations](./Queries/column%20derivations.sql)
- [Customer segmentation](./Queries/customer_segmentations.sql)

---
## Key Insights
- The UK accounts for 50% of the customer base, making it the dominant region.
- Germany and France show churn rates nearly double the UK, indicating localized experience gaps — likely tied to digital engagement and service responsiveness.
- Young and middle‑aged adults represent the highest churn exposure, aligning with segments most targeted by fintech competitors.
- Low‑balance customers churn most frequently, but high‑balance customers pose the greatest revenue risk per customer.
- Inactivity is the strongest predictor of churn, cutting across all engagement levels.
- Churn rates remain high across all credit score and tenure groups, showing that neither financial profile nor relationship length protects against churn.
- Credit card holders exhibit lower churn propensity, suggesting product stickiness.

---
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
Monitor behavioral changes such as reduced transactions or declining activity





