# Recruitment Data Analysis | Python | MySQL 

## Introduction 

This analysis aims to solve the recruitment problem of a company. The hiring team is getting a high number of applications for multiple job roles, which leaves the team without clarity on applicant trends and hiring outcomes. They are trying to find a systematic way to store the data and understand applicant demographics (age, gender, experience) and hiring outcomes.
To create this project, I used two tools: Python and MySQL. I imported the data, cleaned and transformed it in Python, connected Python to MySQL using the PyMySQL connector, and used MySQL to find the insights. I also created a presentation to present the findings clearly.

Dataset: Practice recruitment dataset.

Data preparation: Imported the CSV into pandas (Jupyter Notebook), cleaned and transformed it, then created the MySQL database and table and loaded the records from Python using PyMySQL.

## Business Problem 

The company is receiving a high volume of job applications across different roles, but there is limited visibility into applicant trends and hiring patterns. The recruitment team does not have a structured way to monitor total applications, offer rates, or variations in candidate profiles such as age, gender, experience, and education level. Without these insights, it becomes difficult to evaluate whether the talent pool aligns with hiring requirements. 

The objective is to transform raw recruitment records into actionable insights that can support improved hiring strategies, workforce planning, and more data-driven decision-making within the recruitment process.

Q1. Which top 5 job titles or roles received most applications? 

Q2. Which month we have got the most applications? 

Q3. On which metric we have offered or rejected The candidates, education And experience wise? 

Q4. How many applicants are entry level, mid level and senior level? 

Q5. Which gender submitted more applications, and which gender received more offers?

## Key findings

* 3,000 applications; 610 candidates received offers, 594 were rejected and 1,796 are still in the interviewing stage; among the 1,204 decided candidates, 50.7% received offers.
* Average applicant age is 42 and average experience is 10 years.
* Applications are spread across many roles; "Best Boy" had the most (13 applicants).
* Applications came in May–Aug, peaking in July (1,047) and June (983), which together account for about 68% of all applications.
* Among decided candidates, offer rates were highest for 6–8 years of experience (about 58%) and Master's degree holders (about 55%, 164 offers); candidates with 12+ years were offered at about 49%.
* Senior-level applicants (6+ years) make up about 72% of applicants; entry-level only about 9%.
* Male applicants submitted the most applications (1,030) and received the most offers (217), while female applicants submitted the fewest (967); among decided candidates, offer rates were nearly even (female 52%, male 51%, other 49%).

## Recommendations

* Plan screening and interview capacity for June–July, which together received about 68% of all applications in the May–Aug data.
* Widen entry-level sourcing if the company wants an early-career pipeline, since only about 9% of applicants (284 of 3,000) are entry-level.
* Review screening criteria for senior candidates: 12+ years is the largest group, yet its offer rate (49%) is lower than for 6–8 years (about 58%).
* Keep tracking offer rates by gender; they are nearly even (49–52%) in this data, so no gap is visible.

Links

PPT link:- https://github.com/Kajalbhadani1995/Recruitment_data_project/blob/main/Recruitment%20Data%20Project.pdf

MySQL link:- https://github.com/Kajalbhadani1995/Recruitment_data_project/blob/main/recruitment_data.sql

Python link:- https://github.com/Kajalbhadani1995/Recruitment_data_project/blob/main/Recruiting_Anaysis.ipynb
