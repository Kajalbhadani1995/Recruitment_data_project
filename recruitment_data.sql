use recruitment_db;
show tables;
describe recruitment_data;
select * from recruitment_data limit 10;

######## KPIs Questions ####

# Total_applicants #

select count(`Applicant ID`) as total_applicants from recruitment_data;

# Avg_age #

select round(avg(Age),0) as Avg_age from recruitment_data;

# Total Selected Candidates

select count(*) as Selected_candidates
from recruitment_data 
where `Status` = "Offered";

# Average Year of Experience

select round(avg(`Years of Experience`),0)
as `Avg Years of Experience`
from recruitment_data;

# DATA ANALYSIS #

# Q 1. WHICH TOP 5 JOB TITLE OR ROLES HAVE RECEIVED MOST APPLICANTS

select `Job Title`, count(*) as `Total Applicants`
from recruitment_data
group by `Job Title`
order by `Total Applicants` desc
limit 5;

# Q 2. WHICH MONTHS WE HAVE GOT THE MOST APPICATIONS ? #

select `Application Month`, count(*) as Monthly_application
from recruitment_data
group by `Application Month`
order by Monthly_application desc;

# Q 3. ON WHICH MATRIX WE HAVE ACCEPTED OR RECEJECTED THE APPLICANTS, EDUCATION OR EXPERIENCE ?

# Education Wise

select `Education Level`, `Status`, count(*) as total
from recruitment_data
where lower(`Status`) in ("Offered","Rejected")
group by `Education Level`, `Status`
order by `Education Level`;

# Experience Wise

select
	case 
		when `Years of Experience` 
between 0 and 2 then "0-2 Years"
		when `Years of Experience` 
between 3 and 5 then "3-5 Years"
		when `Years of Experience` 
between 6 and 8 then "6-8 Years"
		when `Years of Experience` 
between 9 and 11 then "9-11 Years"
		ELSE "12+ Years"
	end as Experience_Group, `Status`,
count(*) as total
from recruitment_data
where lower(`Status`) in ("Offered","Rejected")
group by Experience_Group, `Status`
order by Experience_Group, total desc;

# Q 4. HOW MANY APPLICANTS ARE ENTRY-LEVEL, MID LEVEL, SENIOR LEVEL #

select
	case 
		when `Years of Experience` < 2
then "Entry level"
		when `Years of Experience` 
between 2 and 5 then "Mid level"
		else "Senoir level"
	end as Experience_Category,
count(*) as total
from recruitment_data
group by Experience_Category;

# Q 5. WHICH GENDER CATEGORY HAVE APPLIED MORE AND WHAT IS THEIR ACCEPTED AND REJECTED RATE 

select Gender, count(*) as Gender_analysis 
from recruitment_data
group by Gender
order by Gender_analysis ;

select Gender, `Status`, count(*) as Total 
from recruitment_data
where lower(`Status`) in ("Offered","Rejected")
group by Gender, `Status`
order by Gender, Total desc;

# WHAT IS THE APPLICANTS EXPECTED AVERAGE SALARY #

select round(avg(`Desired Salary`),2) 
as expected_salary
from recruitment_data;

# SHOW APPLICANTS WHO EXCEPTS SALARY ABOVE THE AVERAGE EXPECTED SALARY #

select `Full Name` , round(avg(`Desired Salary`),2) as `Expected Salary`
from recruitment_data
group by `Full Name`
having avg(`Desired Salary`) > (select avg(`Desired Salary`) from recruitment_data)
limit 6;

# COUNT APPLICANTS GROUPED BY CITY #

select City, count(*) as total_city_applications 
from recruitment_data
group by City
order by total_city_applications desc
limit 6;

# COUNT APPLICANTS GROUPED BY COUNTRY #

select Country, count(*) as total_country_applications 
from recruitment_data
group by Country
order by total_country_applications desc
limit 6;