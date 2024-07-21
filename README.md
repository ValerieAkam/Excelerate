# Exploratory Data Analysis on Excelerate UserData and Opportunity SignUp and Completion Datasets
## Introduction
This project involves exploratory data analysis (EDA) on two datasets provided by Excelerate: the User dataset and the Opportunity signup and completion dataset.
The goal is to uncover insights and trends that can drive Excelerate decisions and strategies.

## Data Overview
### User Dataset
The User dataset contains information about the users of Excelerate's platform. It contains columns such as:
  PreferredSponsors: 
  Gender: Gender of the user
  Country: Where the user is from
  Degree: What school degree the user has
  Sign_Up_Date: The date the user signed up on Excelerate
  City: The city the user resides
  Zip: The zip code of the user's LGA
  IsFromSocialMedia: How did the user come across Excelerate
  
### Opportunity Signup and Completion Dataset
This Opportunity and completion dataset contains details on the opportunities available on Excelerate. The columns include:
  Profile-Id, Opportunity_Id, Opportunity_Name, Opportunity_Category, Opportunity_Start_Date, Opportunity_End_Date, Apply_Date, Gender, City, State, Country, Zip_Code,    Graduation_Date_YYYY_MM, Current_Student_Status, Current_Intended_Major, Status_Description, Reward_Amount, Badge_Id, Badge_Name, Skill_Points_Earned, Skills_Earned.
  
## Project Structure
--Xcelerate
  --README.md
  --eda
    --analysis.sql [User dataset cleaned] [Opportunity dataset cleaned]
    --queries.sql
    --results
    --summary
    --charts
  --data
    --raw
      --userdata.csv
      --opportunitywise.csv
    --processed
  --reports
  --EDA_Report.pdf
  
## Methodology
1. Data Cleaning: Cleaning and preprocessing of the raw data to handle missing values and inconsistencies.
2. Exploratory Analysis: Using SQL to perform various queries and analyze trends in the datasets.
3. Visualization: Creating visual representations of the data to better understand patterns and insights.
   
## Findings and Insights
User Trends: Insights into user signup dates and location-based distributions.
Opportunity Analysis: Trends in opportunity category and name, profile id, completion of opportunities, gender vs country.
- In the User dataset, India had the most sign ups on Excelerate
- Most users applied for the internship category
  
## Recommendations
Based on the analysis, I'd recommend the following:
- Improve data entry forms
- Field validation
- Enhance user guidance
  
## Contributions
Contributions are welcome! Please open an issue or submit a pull request for any additions or improvements.

## License
This project is licensed under the MIT license.



