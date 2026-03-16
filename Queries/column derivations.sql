---------------------------------------
--COLUMN DERIVATION IN CUSTOMER TABLE
---------------------------------------
ALTER TABLE CustomerInfo
ADD AgeGroup AS 
CASE
WHEN Age between 18 and 35 then 'Young Adult'
WHEN Age between 36 and 45 then 'Middle-Aged Adult'
WHEN Age between 46 and 55 then 'Pre Older Adult'
ELSE 'Older Adult'
END

---------------------------------------------
--COLUMN DERIVATION IN ACCOUNT TABLE
----------------------------------------------
ALTER TABLE AccountInfo
ADD
ChurnStatus VARCHAR(40),
ActiveStatus VARCHAR(40),
BalanceCat VARCHAR(40),
CreditScoreCat VARCHAR(40),
TenureCat VARCHAR(40),
ProductCat VARCHAR(40),
CreditCardStatus VARCHAR(40)

ALTER TABLE AccountInfo
ADD
CreditCardStatus VARCHAR(40)

UPDATE AccountInfo
SET
CreditCardStatus= CASE
	WHEN CreditCard = 1 THEN 'Has Credit Card'
	WHEN CreditCard = 0 THEN 'No Credit Card'
	ELSE 'Unknown'
	END

UPDATE AccountInfo
SET 
ChurnStatus = CASE 
	WHEN Exited=1 THEN 'Churned'
	WHEN Exited=0 THEN 'Not Churned'
	ELSE 'Unknown'
	END,

ActiveStatus= CASE
	WHEN ActiveMember=1 THEN 'Active'
	WHEN ActiveMember=0 THEN 'Inactive'
	ELSE 'Unknown'
	END, 

BalanceCat= CASE
	WHEN BALANCE <= 30000 THEN 'Very Low'
	WHEN Balance BETWEEN 30001 AND 50000 THEN 'Low'
	WHEN Balance between 50001 AND 80000 THEN 'Mid'
	ELSE 'High'
	END,

CreditScoreCat = CASE
	WHEN CreditScore <= 580 THEN 'Poor'
	WHEN CreditScore BETWEEN 581 AND 669 THEN 'Fair'
	WHEN CreditScore BETWEEN 670 AND 739 THEN 'Good'
	WHEN CreditScore BETWEEN 740 AND 799 THEN 'Very Good'
	WHEN CreditScore BETWEEN 800 AND 850 THEN 'Excellent'
	ELSE 'Out of Range'
	END,

TenureCat= CASE
	WHEN Tenure <= 2 THEN 'New'
	WHEN Tenure BETWEEN 3 AND 5 THEN 'Established'
	ELSE 'Loyal'
	END,

ProductCat= CASE
	WHEN Products <= 1 THEN 'Low Engagement'
	WHEN Products =2 THEN 'Moderate Engagement'
	ELSE 'High Engagement'
	END,

CreditCard= CASE
	WHEN CreditCard = 1 THEN 'Has Credit Card'
	WHEN CreditCard = 0 THEN 'No Credit Card'
	ELSE 'Unknown'
	END

--ALTER TABLE AccountInfo
--DROP COLUMN  ProductCat

select * from CustomerInfo
select * from AccountInfo
	

















