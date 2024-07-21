SELECT *
  FROM [Xcelerate].[dbo].[UserData]

--Remove duplicates
WITH duplicate_cte AS (
	SELECT *,
		ROW_NUMBER()OVER(
		PARTITION BY PreferredSponsors, Gender, Country, Degree, Sign_Up_Date, City, zip, isFromSocialMedia
		ORDER BY PreferredSponsors, Gender, Country, Degree, Sign_Up_Date, City, zip, isFromSocialMedia) AS row_num
	FROM [Xcelerate].[dbo].[UserData]
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1

--Standardize data
SELECT PreferredSponsors, Country, Degree, City, TRIM(PreferredSponsors), TRIM(Country), TRIM(Degree), TRIM(City)
  FROM [Xcelerate].[dbo].[UserData]

UPDATE [Xcelerate].[dbo].[UserData]
SET PreferredSponsors = TRIM(PreferredSponsors)
UPDATE [Xcelerate].[dbo].[UserData]
SET Country = TRIM(Country)
UPDATE [Xcelerate].[dbo].[UserData]
SET Degree = TRIM(Degree)
UPDATE [Xcelerate].[dbo].[UserData]
SET City = TRIM(City)
------
SELECT DISTINCT Country
FROM [Xcelerate].[dbo].[UserData]
ORDER BY 1

SELECT *
FROM [Xcelerate].[dbo].[UserData]
WHERE Gender = 'null'

SELECT *
  FROM [Xcelerate].[dbo].[UserData]
  WHERE Country = 'null'

SELECT DISTINCT City, Country
FROM [Xcelerate].[dbo].[UserData]
ORDER BY 1,2

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Abak'
WHERE City = 'ABak' or City = 'Abak town'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Abakaliki'
WHERE City = 'Abakiliki' or City = 'Abakaliki Ebonyi'
--
UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Abeokuta'
WHERE City = 'abeokuta' or City = 'Abeokuta city' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Ablekuma'
WHERE City = 'ABLEKUMA' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Abu Dhabi'
WHERE City = 'AbuDhabi' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Absecon'
WHERE City = 'absecon' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Abu Hammad'
WHERE City = 'abuhamad' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Accra'
WHERE City = 'Acc' or City = 'Acceq' or City = 'Accra Ghana'

SELECT *
FROM [Xcelerate].[dbo].[UserData]
WHERE City like 'adasd%'
----
UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Addis Ababa'
WHERE City = 'addis abeba' or City = 'Addisababa' or City = 'Addisabeba' or City = 'Addsis Ababa' or 
		City = 'Adis ababa'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Lagos'
WHERE City = 'Adetola road Ijaye Ojokoro' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Adi'
WHERE City = 'adi' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Ado Ekiti'
WHERE City = 'Ado Ekiti Nigeria' or City = 'Adoekiti'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Adoni'
WHERE City = 'adoni' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Ago Palace'
WHERE City = 'ago palaceway' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Ahmedabad'
WHERE City = 'Ahemdabad' or City = 'Ahamdabad' or City = 'AHMEDABAD' or City = 'Ahmedabd'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Ahmedabad', Country = 'India'
WHERE City = 'AHMEDABAD' and Country = 'Canada'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Muzaffarabad'
WHERE City = 'ajk muzaffrabad' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Akoka'
WHERE City = 'Akokq' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Akure'
WHERE City = 'Akure City' or City = 'Akure Ondo State' or City = 'Akure south'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Alappuzha'
WHERE City = 'Alapuzha'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Algiers'
WHERE City = 'Algers' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Alipurduar'
WHERE City = 'Alipuruduar' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Anantapur'
WHERE City = 'ANANTAPUR' or City = 'anantapur' or City = 'Ananthapur'

--------
UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Ambernath'
WHERE City = 'Ambarnath' or City = 'AMBERNATH'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Ambikapur'
WHERE City = 'AMBIKAPUR' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Amravati'
WHERE City = 'Amravati City'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Anantapur'
WHERE City = 'Ananthapuram' or City = 'ANATAPUR'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Antipolo'
WHERE City = 'Antipolo City' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Arambagh'
WHERE City = 'Arambag' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Arifwala'
WHERE City = 'Arif' or City = 'ARIFWALLA'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Arlington Heights'
WHERE City = 'Arlington Height' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Ashmoun'
WHERE City = 'Ashmon'

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Attock'
WHERE City = 'Attock city' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Awka North'
WHERE City = 'Awkanorth' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Ayobo'
WHERE City = 'Ayoboo' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Azare'
WHERE City = 'Azare e' 

UPDATE [Xcelerate].[dbo].[UserData]
SET City = 'Bahawalnagar'
WHERE City = 'Bahawal nagar' or City = 'Bahawalngar' or City = 'bahwalnager'

SELECT *
FROM [Xcelerate].[dbo].[UserData]
WHERE City like 'Ass%'

SELECT DISTINCT Sign_Up_Date
FROM [Xcelerate].[dbo].[UserData]
ORDER BY 1

--Changing the date type of the Signupdate column
ALTER TABLE [Xcelerate].[dbo].[UserData] 
ALTER COLUMN Sign_Up_Date DATE;

--Check for null/blank values
--1
SELECT *
FROM [Xcelerate].[dbo].[UserData]
WHERE Gender IS NULL AND Country IS NULL AND Degree IS NULL AND City IS NULL
--2	
SELECT *
FROM [Xcelerate].[dbo].[UserData]
WHERE Gender = 'null' AND Country = 'null' 
--3
SELECT *
FROM [Xcelerate].[dbo].[UserData]
WHERE Country IS NULL

SELECT DISTINCT Country
FROM [Xcelerate].[dbo].[UserData]
ORDER BY 1
--
SELECT * --DISTINCT City
FROM Xcelerate.dbo.UserData
WHERE City IS NULL

UPDATE Xcelerate.dbo.UserData
SET Degree = NULL
WHERE Degree = 'null'

SELECT *
FROM [Xcelerate].[dbo].[UserData]
WHERE Gender IS NULL
--Remove unnecessary columns
DELETE
FROM [Xcelerate].[dbo].[UserData]
WHERE Gender IS NULL AND Country IS NULL AND Degree IS NULL AND City IS NULL
		
DELETE
FROM [Xcelerate].[dbo].[UserData]
WHERE Gender = 'null' AND Country = 'null' 

DELETE
FROM [Xcelerate].[dbo].[UserData]
WHERE Country IS NULL











