# Pewlett-Hackard-Analysis
Performing analysis of company employee data by utilizing the dynamic ability of the relational database PostgresSQL to transform and query data.

##  Resources 
- Python 3.7.6, JupyterLab 2.26
- [PostgreSQL 12.2](https://www.postgresql.org/), [Pgadmin 4.20](https://www.pgadmin.org/) 

## Overview 
The purpose of this project is to perform analysis on a large-scale of employee data for a company with over 300,000 employees.
The company Pewlett Hackard is reviewing staffing metrics, namely retirement and needs assistance wrangling the data that will help translate who may be and is eligible for retirement. 

## Data Process  
- [Modeling](https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Resources/EmployeeDB_0.png)<br>
  Through creating an Entity Relationship Diagram we are able to [map out our database schema](https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Resources/query_schema_0.png) as well as relationships, which is how our various data files will interact with each other as tables within the database. 
 
- Wrangling <br>
With the schema of the database mapped out and created we can then import our company data into the database(in the form of csv files of various sizes).
Since [data types and restrictions are already defined](https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Resources/query_schema_1.png) for the database, we can ensure data integrity and  a trustworthy analysis. 

- Transforming & Analyzing<br>
Having our data cleanly imported and formatted within the database, we can freely use SQL(structured Query Language) to communicate with the database and retrieve information.
We can then further parse the large datasets based on custom filters and groupings as well as creating custom tables and joining pre-existing ones. 

## Results / Findings 
By utilizing [multi-pronged queries] on the database(https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql) to gain focused insights on employee/retirement metrics. Below are several of my findings: 

### Employees Eligible for Retirement
- Of the 300,024 employees within the company, 90,398 (30.13%) are eligible for retirement. 
- Senior Engineer, Senior Staff and Engineer's hold the largest share (23.9%) of employees likely preparing for retirement. <br>

![query_schema_0](https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Resources/query_schema_2.png)

- THE departments with the highest number of potential retirees are Development(25.45%),Production(22.30%) and Sales(7.27%). <br>
![query_schema_5](https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Resources/query_schema_6.png)

### Employees Eligible for Mentorship

- Only 1549 total employees qualify for mentorship/training for an internal promotion.
![query_schema_7](https://github.com/DonnieData/Pewlett-Hackard-Analysis/blob/main/Resources/query_schema_7.png)

## Summary 
Based on the findings of my analysis Pewlett Hackard is potentially facing over 90,000 vacant positions company wide.
Taking into consideration the low amount of employees who are eligible for mentorship, Pewlett hackard will face a great deficit once a majority of eligible employees retire.


