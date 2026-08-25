# COVID-19-State-Level-Analysis
A SQL-based epidemiological data analysis project that ranks active caseloads, classifies regional risk levels, and computes mortality and recovery rates using state-level COVID-19 indicators.

PROJECT OVERVIEW

A SQL analysis project that tracked COVID-19 in India by state. In order to assess public health data, the project uses window functions to rank regional severity and active case loads and computes critical performance indicators, such as recovery and mortality percentages.

KEY FEATURES

1. Epidemiological Metrics: Determines the percentage of fatalities and discharges in each state as well as the overall national recovery rates.  
2. Window routines & Ranking: Regions are dynamically arranged by active case density using the RANK() and DENSE_RANK() routines.  
3. Risk Classification: It divides states into High, Medium, and Low-risk zones according to mortality proportions using conditional CASE WHEN logic.  
4. Advanced Aggregations: Uses threshold-based SQL conditions and HAVING to filter and isolate high-impact zones.

TECH STACK AND TOOLS

1. Database Engine: MySQL / PostgreSQL
2. Tools: MySQL Workbench / DBeaver / DataGrip
3. Language: Structured Query Language (SQL)

HOW TO RUN THIS PROJECT

1. Open your database editor and create the database: CREATE DATABASE covid; USE covid;. 
2. Import the COVID-19 dataset into the covid table. 
3. Execute the SQL script sequentially to run analytical queries and derive regional insights. 
