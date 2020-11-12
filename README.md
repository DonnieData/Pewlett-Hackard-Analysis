# Pewlett-Hackard-Analysis
Performing analysis of company employee data by utilizng the dynamic ability of the relational database PostgresSQL to transform and query data.

##  Resources 
- Python 3.7.6, JupyterLab 2.26
- [PostgreSQL 12.2](https://www.postgresql.org/), [Pgadmin 4.20](https://www.pgadmin.org/) 

## Overview 
The purpose of this project is to perform analysis on a large-scale of employee data for a company with over 300,000 employees.
The company Pewlett Hackard is reviewing staffing metrics, namely retirement and needs assistance wrangling the data that will help transalte who may be and is eleigible fore retirement. 

## Data Process  
- Modeling [ERD Image]<br>
  Through creating an Entity Relationship Diagram we are able to [map out our database schema](https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Resources/query_schema_0.png) as well as relationships, which is how our various data files will interact with each other as tables within the database. 
 
- Wrangling <br>
With the schema of the database mapped out and created we can then import our company data into the database(in the form of csv files of various sizes).
Since [datatypes and restrictions are already defined](https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Resources/query_schema_1.png) for the database, we ca nensure dat aintegrity and  a trustworthy analysis. 

- Transforming & Analyzing<br>
Having our data cleanly imported and formated within the database, we can freely use SQL(structured Query Language) to communicate with the database and retrieve information.
We can then further parse the large datasets based on custom filters and groupings as well as creating custom tables and joining pre-existing ones. 

## Results / Findings 
By utilizing [multi-pronged queries](https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql) to gain foccused insights on employee/retirement metrics, I have made several findings:

![query_schema_0](https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Resources/query_schema_2.png)
Of the 300,024 employees within the company, 30.13% are eligible for retirment 

## Summary 
analysis of results maybe throw in some  extra percentage ratios etc <br> 

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?



