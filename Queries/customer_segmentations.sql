
---------------------------------------
--CONSOLIDATED DATA WITH VIEW FUNCTION
---------------------------------------
CREATE VIEW CustomerDetails AS 
SELECT
a.CustomerId,
a.CreditCard,
a.ChurnStatus,
a.ActiveStatus,
a.CreditScoreCat,
a.BalanceCat,
a.TenureCat,
a.ProductCat,
a.CreditCardStatus,
c.Age,
c.AgeGroup,
c.Country,
c.Gender,
c.LastName
FROM AccountInfo AS a
LEFT JOIN CustomerInfo AS c
ON a.CustomerId = c.CustomerId

SELECT * FROM CustomerDetails

--DROP VIEW CustomerDetails

----------------------------------------------
-- CUSTOMER SEGMENTATION TABLE
----------------------------------------------

CREATE VIEW ChurnRiskLevel AS
SELECT CustomerId,Country,AgeGroup,CreditScoreCat,BalanceCat,ActiveStatus,ChurnStatus,
TenureCat,ProductCat,
CASE WHEN CreditScoreCat IN ('Low', 'Fair')
	and BalanceCat='Very Low'
	and ProductCat='Low Engagement'
	and TenureCat='New'
		THEN 'High Risk'

	WHEN (CreditScoreCat IN ('Low','Fair') AND BalanceCat IN ('Very Low','Low'))
	OR (CreditScoreCat IN ('Low','Fair') AND ProductCat ='Low Engagement')
	OR (BalanceCat IN ('Very Low','Low') AND ProductCat='Low Engagement')
		THEN 'Elevated Risk'

	WHEN ProductCat='Moderate Engagement' OR TenureCat='Established'
		THEN 'Medium Risk'
	ELSE 'Low Risk'
	END AS ChurnRisk	
FROM CustomerDetails

SELECT * FROM ChurnRiskLevel

-----------------------------------------------
--DEEP DIVE ANALYSIS
-----------------------------------------------
--[1]Number of people that churned in each country
SELECT Country,COUNT(CustomerId) AS Churned_Customers
FROM CustomerDetails
WHERE ChurnStatus = 'Churned'
GROUP BY Country
ORDER BY COUNT(CustomerId) DESC

--[2]Number of Churn in each Country and gender
SELECT Country,Gender,COUNT(CustomerId) AS Churned_Customers
FROM CustomerDetails
WHERE ChurnStatus = 'Churned'
GROUP BY Country, Gender
ORDER BY Country DESC

--[3]Overall Churn Rate
Select  COUNT(CustomerId) AS Total_Customers,
SUM(CASE WHEN ChurnStatus='Churned' THEN 1 ELSE 0 END) AS Churned_Customers,
100*SUM(CASE WHEN ChurnStatus='Churned' THEN 1 ELSE 0 END)/COUNT(CustomerId) AS perc
FROM CustomerDetails

--[4]Churn Rate by AgeGroup
Select  AgeGroup,COUNT(CustomerId) AS Total_Customers,
SUM(CASE WHEN ChurnStatus='Churned' THEN 1 ELSE 0 END) AS Churned_Customers,
CAST(100.0*SUM(CASE WHEN ChurnStatus='Churned' THEN 1 ELSE 0 END)/COUNT(CustomerId)AS DECIMAL(5,2))
AS perc
FROM CustomerDetails
GROUP BY AgeGroup
ORDER BY perc DESC

--[5]What customer behaviour are linked to churn 
--CHURNED CUSTOMERS VS ACC_BAL
SELECT BalanceCat, COUNT(*) AS no_of_customers, SUM(CASE WHEN ChurnStatus='Churned' 
THEN 1 ELSE 0 END) AS Churned_customers, 100*SUM(CASE WHEN ChurnStatus='Churned' 
THEN 1 ELSE 0 END)/COUNT(*) AS PERC
FROM CustomerDetails
GROUP BY BalanceCat
ORDER BY PERC DESC

--[6]Credit card vs churn rate
SELECT CreditCardStatus, COUNT(*) AS no_of_customers, SUM(CASE WHEN ChurnStatus='Churned' 
THEN 1 ELSE 0 END) AS Churned_customers, 100*SUM(CASE WHEN ChurnStatus='Churned' 
THEN 1 ELSE 0 END)/COUNT(*) AS PERC
FROM CustomerDetails
GROUP BY CreditCardStatus
ORDER BY COUNT(*) DESC

--[7]How does credit score corelate with churn
SELECT CreditScoreCat, COUNT(*) AS no_of_customers, SUM(CASE WHEN ChurnStatus='Churned' 
THEN 1 ELSE 0 END) AS Churned_customers, 100*SUM(CASE WHEN ChurnStatus='Churned' 
THEN 1 ELSE 0 END)/COUNT(*) AS PERC
FROM CustomerDetails
GROUP BY CreditScoreCat
ORDER BY PERC DESC

--[8]PRODUCT CATEGORY VS CHURN
SELECT ProductCat, COUNT(*) AS no_of_customers, SUM(CASE WHEN ChurnStatus='Churned' 
THEN 1 ELSE 0 END) AS Churned_customers,CAST( 100.0*SUM(CASE WHEN ChurnStatus='Churned' 
THEN 1 ELSE 0 END)/COUNT(*) AS DECIMAL(5,2)) AS PERC
FROM CustomerDetails
GROUP BY ProductCat
ORDER BY PERC DESC

--[9]Tenure Category Vs Churn rate
SELECT TenureCat, COUNT(*) AS no_of_customers, SUM(CASE WHEN ChurnStatus='Churned' 
THEN 1 ELSE 0 END) AS Churned_customers, 100*SUM(CASE WHEN ChurnStatus='Churned' 
THEN 1 ELSE 0 END)/COUNT(*) AS PERC
FROM CustomerDetails
GROUP BY TenureCat
ORDER BY PERC DESC




SELECT * FROM CustomerDetails


