--REWARD AND SKILL POINTS ANALYSIS
	SELECT MIN(Reward_Amount) AS MinReward, MAX(Reward_Amount) AS MaxReward, AVG(Reward_Amount) AS AvgReward,
		MIN(Skill_Points_Earned) AS MinSkillPoints, MAX(Skill_Points_Earned) AS MaxSkillPoints,
		AVG(Skill_Points_Earned) AS AvgSkillPoints
	FROM Xcelerate.dbo.OpportunityWise_Data

--TOP 10 COUNTRIES WITH THE MOST SIGNUPS
	SELECT TOP 10 Country, COUNT(*) AS SignupCount
	FROM Xcelerate.dbo.UserData
	GROUP BY Country
	ORDER BY SignupCount DESC

--ENTRIES BY OPPORTUNITY NAME
	SELECT Opportunity_Name, COUNT(*) AS Frequency 
	FROM Xcelerate.dbo.OpportunityWise_Data
	GROUP BY Opportunity_Name
	ORDER BY 2 DESC

--ENTRIES BY OPPORTUNITY CATEGORY
	SELECT Opportunity_Category, COUNT(*) AS Frequency 
	FROM Xcelerate.dbo.OpportunityWise_Data
	GROUP BY Opportunity_Category
	ORDER BY 2 DESC

--HOW MANY ENTRIES COMPLETED THE OPPORTUNITY
	SELECT Opportunity_Name, COUNT(*) AS CompletedCount
	FROM Xcelerate.dbo.OpportunityWise_Data
	WHERE Status_Description = 'Rewards Award'
	GROUP BY Opportunity_Name
	ORDER BY CompletedCount DESC

--NUMBER OF LEARNERS THAT EARNED A SKILL
	SELECT Skills_Earned, COUNT(*) AS SkillsCount
	FROM Xcelerate.dbo.OpportunityWise_Data
	GROUP BY Skills_Earned
	ORDER BY SkillsCount DESC

--GEOGRAPHICAL DISTRIBUTION OF REWARDS
	SELECT Country, State, Current_Student_Status, Status_Description, Reward_Amount
	FROM Xcelerate.dbo.OpportunityWise_Data
	WHERE Status_Description = 'Rewards Award'
	GROUP BY Country, State, Current_Student_Status, Status_Description, Reward_Amount
	ORDER BY Country

--GENDER DISTRIBUTION BY COUNTRY
	SELECT DISTINCT Country, Gender, COUNT(*) AS GenderCount
	FROM Xcelerate.dbo.OpportunityWise_Data
	WHERE Gender IS NOT NULL
	GROUP BY Country, Gender
	ORDER BY Country, GenderCount

--SIGNUPS PER MONTH
	SELECT Sign_Up_Date, YEAR(Sign_Up_Date) AS SignUpYear, MONTH(Sign_Up_Date) AS SignUpMonth, Country,
		COUNT(*) AS SignUpCount
	FROM Xcelerate.dbo.UserData
	GROUP BY Sign_Up_Date, YEAR(Sign_Up_Date), MONTH(Sign_Up_Date), Country
	ORDER BY YEAR(Sign_Up_Date),MONTH(Sign_Up_Date)
