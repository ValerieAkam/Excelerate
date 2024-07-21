SELECT *
  FROM [Xcelerate].[dbo].[OpportunityWise_Data]

--Remove duplicates
WITH duplicate_cte AS (
	SELECT *,
		ROW_NUMBER()OVER(
		PARTITION BY Profile_Id, Opportunity_Id, Gender, Country, Apply_Date
		ORDER BY Opportunity_Id) AS row_num
	FROM [Xcelerate].[dbo].[OpportunityWise_Data]
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1
---
SELECT Profile_Id, Country,
COUNT(*)
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
GROUP BY Profile_Id, Country
HAVING COUNT(*) > 1;


--Standardize data
SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Opportunity_Name = 'Digital Marketing'
ORDER BY Country

SELECT DISTINCT Profile_Id
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY Country

SELECT DISTINCT Opportunity_Id
FROM [Xcelerate].[dbo].[OpportunityWise_Data]

SELECT DISTINCT Opportunity_Name
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY Opportunity_Name

SELECT DISTINCT Opportunity_Category
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY Opportunity_Category

SELECT DISTINCT City
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE City like 'Al Omra%'
SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Zip_Code = '233' or State = 'Mafi'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Abakaliki'
WHERE City = 'ABAKALIKI' or City = 'Abakaliki Ebonyi'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Accra'
WHERE City = 'A' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Addis Ababa'
WHERE City = 'addis ababa' or City = 'Addis Abeba' or City = 'Addsis Ababa' or City = 'Adis ababa'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Lagos'
WHERE City = 'Adetola road Ijaye Ojokoro' 
-----
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Ado'
WHERE City = 'ADO' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Ado Ekiti'
WHERE City = 'Ado Ekiti Nigeria' or City = 'Adoekiti'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Ahmedabad'
WHERE City = 'Ahemdabad' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Ahmednagar'
WHERE City = 'Ahmedgarh' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Muzaffarabad'
WHERE City = 'ajk muzaffrabad' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Akoka'
WHERE City = 'Akokq' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Akure'
WHERE City = 'Akure City' or City = 'Akure Ondo State' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Al Omrania'
WHERE City = 'Al Omranyia' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Alappuzha'
WHERE City = 'Alapuzha'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Ambernath'
WHERE City = 'AMBARNATH' or City = 'AMBERNATH'
------------------------------------------------------------------
SELECT DISTINCT State
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE State like 'Al gharb%'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Accra'
WHERE State = 'Accr' or State = 'accra' or State = 'ACCRA'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Abia'
WHERE State = 'Abia State'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Abuja'
WHERE State = 'Abj'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Abia'
WHERE State = 'Abua state'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'FCT'
WHERE State = 'Federal Capital Territory' or State = 'Fct Abuja' or State = 'Abuja' or State = 'Abuja Capital Territory' or State = 'Abuja FCT' or State = 'Abuja Federal Capital Territor'
			or State = 'abuja' or State = 'Abuja Federal Capital Territory' or State = 'ABUJA'

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE State like 'add%' and City != 'Abuja%'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET City = 'Abuja'
WHERE City = 'ABUJA' or City = 'abuja' or City = 'Federal capital territory' or City = 'Sunnyvale Junction by Lokogoma Abuja Nigeria'
		or City = 'FCT Abuja' or City = 'Fct Abuja' or City = 'fct abuja'
---
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Adamawa' 
WHERE State = 'Adamawa state'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Addis Ababa' 
WHERE State = 'addis ababa' or State = 'Addis Abeba' or State = 'Adis ababa'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Akwa Ibom' 
WHERE State = 'Akwa Ibom state' or State = 'Akwaibom'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Al Gharbiya' 
WHERE State = 'Al Gharbia'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Alexandria' 
WHERE State = 'Alexanderia' or State = 'Alexandr' or State = 'ALEXANDRIA' or State = 'Alex'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Andaman and Nicobar Islands' 
WHERE State = 'Andaman'
--
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Anambra' 
WHERE State = 'Anambra state'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Andhra Pradesh' 
WHERE State = 'Andhara Pradesh' or State = 'Andharapradesh' or State = 'Andhra' or State = 'Andhra Pradesh state'
	or State = 'Andhra pradhesh' or State = 'ANDHRAPRADESH' or State = 'Andra Pradesh' or State = 'Andrapradesh'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET State = 'Ashanti Region' 
WHERE State = 'Ashante Region' or State = 'Ashanti region'

SELECT DISTINCT State
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE State like 'Ashan%'
-------------------------------------------------------------------
SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Gender IS NULL
---------------------------------------------------------------------
SELECT DISTINCT Country
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Country like 'Virgin%'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Country = 'Congo, The Democratic Republic of the Congo'
WHERE Country = 'Congo  The Democratic Republic of the Congo'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Country = 'Iran, Islamic Republic of Persian Gulf'
WHERE Country = 'Iran  Islamic Republic of Persian Gulf'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Country = 'United States'
WHERE Country = 'Virgin Islands, U.S.'
-----------------------------------------------------------
SELECT DISTINCT Zip_Code
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1
------------------------------------------------------------
SELECT DISTINCT Graduation_Date_YYYY_MM
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Graduation_Date_YYYY_MM like '000%'
-------------------------------------------------------------
SELECT DISTINCT Current_Student_Status
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Current_Student_Status = 'Not in Education'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Student_Status = 'Graduate Program' 
WHERE Current_Student_Status = 'Graduate Program Student'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Student_Status = 'High School' 
WHERE Current_Student_Status = 'High School Student'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Student_Status = 'Undergraduate' 
WHERE Current_Student_Status = 'Undergraduate Student'
----------------------------------------------------------------------
SELECT DISTINCT Current_Intended_Major
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Current_Intended_Major like 'Agricultural Science%'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Accounting'
WHERE Current_Intended_Major = 'Accounts' or Current_Intended_Major = 'ACCOUNTING'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Admission in PG'
WHERE Current_Intended_Major = 'Addmission in PG' 


UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Actuarial Science'
WHERE Current_Intended_Major = 'Actuarial Sciences' or Current_Intended_Major = 'Actuarial Scence'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Agricultural and Resource Economics'
WHERE Current_Intended_Major = 'Agricultural and Resources Economics'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Agricultural Engineering'
WHERE Current_Intended_Major = 'Agricultural Eng'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Animal Science'
WHERE Current_Intended_Major = 'Animal Sciences'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Artificial Intelligence'
WHERE Current_Intended_Major = 'Artifical Intelligence' or Current_Intended_Major = 'Artificial Intelligent'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Aviation Administration'
WHERE Current_Intended_Major = 'AVIATION ADMINISTRATION'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Aviation Management'
WHERE Current_Intended_Major = 'Aviaton Management'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'BSc'
WHERE Current_Intended_Major = 'BTech'
--------------------------------------------------
SELECT DISTINCT Current_Intended_Major
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Current_Intended_Major = 'Business Analytics'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Bachelor of Arts in Psychology'
WHERE Current_Intended_Major = 'Ba Psych'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Bachelor of Accounting and Finance'
WHERE Current_Intended_Major = 'BAF'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Bachelor of Arts'
WHERE Current_Intended_Major = 'Batchelor of Arts'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Bioinformatics'
WHERE Current_Intended_Major = 'Bioinformatic'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Biomedical Science'
WHERE Current_Intended_Major = 'Biomedical sciences'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'BSc'
WHERE Current_Intended_Major = 'B Sc' or Current_Intended_Major = 'BSC'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'BSc Accounting'
WHERE Current_Intended_Major = 'BSC ACCOUNTING'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'BSc in Agriculture'
WHERE Current_Intended_Major = 'Bsc Agri' or Current_Intended_Major = 'Bsc in agriculture'
------------
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'BSc in Computer Science'
WHERE Current_Intended_Major = 'BSC Cs' or Current_Intended_Major = 'Bsc in Computer Science'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'BSc in Economics'
WHERE Current_Intended_Major = 'Bsc Economics'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Building Technology'
WHERE Current_Intended_Major = 'Building Tech'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Business Analytics'
WHERE Current_Intended_Major = 'Business Analyst' or Current_Intended_Major = 'Business Analysis'
	or Current_Intended_Major = 'Businessanalytics'
-------------------------------------------------------------------
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Community Health Extension Worker'
WHERE Current_Intended_Major = 'COMMUNITY HEALTH EXTENSION WORKER'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Computer and Information Sciences'
WHERE Current_Intended_Major = 'Computer and Information Sciencess' 
	or Current_Intended_Major = 'Computer and Infromation Sciences'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Computer Engineering'
WHERE Current_Intended_Major = 'Computer Engineer' 
	or Current_Intended_Major = 'Computer Enginnering'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Computer Science Education'
WHERE Current_Intended_Major = 'Computer Sci Edu' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Computer Science and Business Systems'
WHERE Current_Intended_Major = 'Computer Science and Business System' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Computer Science and Engineering'
WHERE Current_Intended_Major = 'Computer Science and Engineerin' 
-------------------------------------------------------------------------------------------------
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Cyber Security'
WHERE Current_Intended_Major = 'Cybersecurity' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Data Analytics'
WHERE Current_Intended_Major = 'Data An' or Current_Intended_Major = 'Data Analysis' 
	or Current_Intended_Major = 'Data Analyst' or Current_Intended_Major = 'data analytivs'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Data Science and Business Analytics'
WHERE Current_Intended_Major = 'Data Science and Business Analysis' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Data Science'
WHERE Current_Intended_Major = 'Datascience' or Current_Intended_Major = 'Datascientis'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Design and Manufacturing'
WHERE Current_Intended_Major = 'Design and Manufactur' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Digital and Content Marketing'
WHERE Current_Intended_Major = 'Digital and Content marke' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Digital Marketing'
WHERE Current_Intended_Major = 'Digital Marketer' 
-------------------------------------------
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Economics Education'
WHERE Current_Intended_Major = 'Economicseducation' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Economics'
WHERE Current_Intended_Major = 'Economic'  or Current_Intended_Major = 'Economy'
------
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Electrical Engineering'
WHERE Current_Intended_Major = 'Electrical Engineer' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Electronics and Telecommunication'
WHERE Current_Intended_Major = 'Electronic and Telecommunication' or Current_Intended_Major = 'Electronic and Telecommunications' 
	or Current_Intended_Major = 'Electronics and Telecommunications'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Electronics and Computer Engineering'
WHERE Current_Intended_Major = 'Electronics and Computers Engineering' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Engineering'
WHERE Current_Intended_Major = 'engineer' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Engineering Physics'
WHERE Current_Intended_Major = 'Engineers Physics' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Environmental Health Sciences'
WHERE Current_Intended_Major = 'Environmental Health Science'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Environmental Sciences'
WHERE Current_Intended_Major = 'Enviromental Science' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Estate Management'
WHERE Current_Intended_Major = 'Estate Managenent' 
------------------------------------------------------------------------
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Food Technology'
WHERE Current_Intended_Major = 'Food Tech' or Current_Intended_Major = 'Foodtechnology'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Forensic Science'
WHERE Current_Intended_Major = 'Forensic Sci' 
------------------------------------------------------------------------------------
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Health Data Science'
WHERE Current_Intended_Major = 'Health Data Sci' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Health Information Management'
WHERE Current_Intended_Major = 'Health Information Man' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Health Science'
WHERE Current_Intended_Major = 'Health Sciences' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Health Sector'
WHERE Current_Intended_Major = 'Heath Secotor' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Horticulture'
WHERE Current_Intended_Major = 'Horticul' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Human Nutrition'
WHERE Current_Intended_Major = 'human nutrition' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Human Resources'
WHERE Current_Intended_Major = 'Human Resource' 
-------------------------

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Information Technology'
WHERE Current_Intended_Major = 'Information technology' or Current_Intended_Major = 'Informationtechnology' 
	or Current_Intended_Major = 'IT'

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Management and Accounting'
WHERE Current_Intended_Major = 'Management and Account' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Medical Science'
WHERE Current_Intended_Major = 'Medical Sciences' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'None'
WHERE Current_Intended_Major = 'Nil' or Current_Intended_Major = 'Nill' or Current_Intended_Major = 'No'
	or Current_Intended_Major = 'Nomajor' or Current_Intended_Major = 'Non' or Current_Intended_Major = 'Not Applicable'
	or Current_Intended_Major = 'Not Chosen' or Current_Intended_Major = 'Not Know Ab' or Current_Intended_Major = 'Not Sure'
	or Current_Intended_Major = 'Nothing'
----------

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'None'
WHERE Current_Intended_Major = 'Ot' or Current_Intended_Major = 'Oth' or Current_Intended_Major = 'Othe'
	or Current_Intended_Major = 'Otheraassss'
---
UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'PhD'
WHERE Current_Intended_Major = 'Ph D' or Current_Intended_Major = 'Phd' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Statistics and Computer Science'
WHERE Current_Intended_Major = 'Statistics and Computeri Science' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Supply Chain Management'
WHERE Current_Intended_Major = 'Supply Chain Managent' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Telecommunication Engineering'
WHERE Current_Intended_Major = 'Telecommunications Engineering' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Telecommunication'
WHERE Current_Intended_Major = 'Telecom' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Textile Engineering'
WHERE Current_Intended_Major = 'Textile Engineerng' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Undecided'
WHERE Current_Intended_Major = 'Undicided' 

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data] 
SET Current_Intended_Major = 'Web Development'
WHERE Current_Intended_Major = 'Web Dev' or Current_Intended_Major = 'Web'

SELECT DISTINCT Current_Intended_Major
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Current_Intended_Major = 'Yes'
	
------------------------------------------------------------------
-----------------------------------------------------------------------
SELECT DISTINCT Status_Description
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

SELECT DISTINCT Skill_Points_Earned
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1

-----Check for null/blank values
SELECT DISTINCT Gender
FROM Xcelerate.dbo.OpportunityWise_Data

	SELECT *
	FROM [Xcelerate].[dbo].[OpportunityWise_Data]
	WHERE Opportunity_End_Date is not null

	SELECT *
	FROM [Xcelerate].[dbo].[OpportunityWise_Data]
	WHERE Skill_Points_Earned is null

--The nulls in badgeid and reward amount column is 17801 rows
	SELECT *
	FROM [Xcelerate].[dbo].[OpportunityWise_Data]
	WHERE Reward_Amount is not null and Badge_Id is not null and Badge_Name is not null and Skill_Points_Earned is not null
		and Skills_Earned is not null
	
SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Opportunity_End_Date IS NOT NULL AND Opportunity_Start_Date IS NOT NULL AND Apply_Date IS NOT NULL

SELECT DISTINCT(Current_Student_Status)
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
ORDER BY 1
SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Gender is null

SELECT *
FROM [Xcelerate].[dbo].[OpportunityWise_Data]
WHERE Opportunity_Id like '00000000-0GWQ%' AND Country = 'India'

SELECT Profile_Id, COUNT(*) AS Count 
FROM Xcelerate.dbo.OpportunityWise_Data
GROUP BY Profile_Id
HAVING COUNT(*) > 1
ORDER BY 2 DESC

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Unknown'
WHERE Current_Intended_Major IS NULL

UPDATE [Xcelerate].[dbo].[OpportunityWise_Data]
SET Current_Intended_Major = 'Unknown'
WHERE Current_Intended_Major IS NULL
--Delete unnnecessary columns






