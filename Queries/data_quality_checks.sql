select * from AccountInfo
select * from CustomerInfo
-------------------------------------------------
--[1]DATA QUALITY CHECKS
-------------------------------------------------

--Checking for Duplicates in CustomerInfo
SELECT CustomerId, COUNT(*) AS Customer_Count
FROM CustomerInfo 
GROUP BY CustomerId
HAVING COUNT(*) > 1

--Checking for duplicates in AccountInfo
SELECT CustomerId, COUNT(*) AS Customer_Count
FROM AccountInfo 
GROUP BY CustomerId
HAVING COUNT(*) > 1

--Checking for nulls in CustomerInfo table
SELECT
SUM(CASE WHEN CustomerId IS NULL THEN 1 ELSE 0 END) AS cust_id_nulls,
SUM(CASE WHEN LastName IS NULL THEN 1 ELSE 0 END) AS last_name_nulls,
SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS country_nulls,
SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS gender_nulls,
SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS age_nulls
FROM CustomerInfo

--Checking for nulls in AccountInfo table
SELECT
SUM(CASE WHEN CustomerId IS NULL THEN 1 ELSE 0 END) AS cust_id_nulls,
SUM(CASE WHEN CreditScore IS NULL THEN 1 ELSE 0 END) AS credit_score_nulls,
SUM(CASE WHEN Tenure IS NULL THEN 1 ELSE 0 END) AS tenure_nulls,
SUM(CASE WHEN Balance IS NULL THEN 1 ELSE 0 END) AS balance_nulls,
SUM(CASE WHEN Products IS NULL THEN 1 ELSE 0 END) AS products_nulls,
SUM(CASE WHEN CreditCard IS NULL THEN 1 ELSE 0 END) AS credit_card_nulls,
SUM(CASE WHEN ActiveMember IS NULL THEN 1 ELSE 0 END) AS act_member_nulls,
SUM(CASE WHEN Exited IS NULL THEN 1 ELSE 0 END) AS exited_nulls
FROM AccountInfo

--Checking for Outliers
--(1) min and max age including average age
SELECT MIN(Age) as min_age, MAX(Age) as max_age, AVG(Age) as avg_age
FROM CustomerInfo

--(2)min and max credit score
SELECT MIN(CreditScore) AS min_CS, MAX(CreditScore) AS max_CS, AVG(CreditScore) AS AVG_CS
FROM AccountInfo

--(3) Negative Balance
SELECT CustomerId,Balance
FROM AccountInfo
WHERE Balance < 0

--------------------------------------------------------
--[2]Preliminary EDA--
--------------------------------------------------------
--No of records
SELECT COUNT(*) FROM CustomerInfo
SELECT COUNT(*) FROM AccountInfo

--No of customers in each country
SELECT Country,COUNT(*) AS no_of_customers
FROM CustomerInfo
GROUP BY Country
ORDER BY COUNT(*) DESC

--Gender Distribution
SELECT Gender, COUNT(*) AS no_of_customers
FROM CustomerInfo
GROUP BY Gender

--Churn Distribution
SELECT Exited, COUNT(*) AS Number_of_customers
FROM AccountInfo
GROUP BY Exited

--Active Distribution
SELECT ActiveMember, COUNT(*) AS Number_of_customers
FROM AccountInfo
GROUP BY ActiveMember
