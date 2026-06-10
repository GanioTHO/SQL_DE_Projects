# Exploratory Data Analysis using SQL: Data Engineering Jobs

A SQL project analyzing the Data Engineer job market using real-world job posting data provided by Luke Barousse. It demonstrates my ability to **analyze business problems, select the most effective approach for a given problem, design efficient queries, and turn real business questions into data-driven insights.**

## Executive Summary
The project consists of 5 SQL files, each containing queries addressing a specific business question. There is no need to run the code yourself, as the results are included within the comments for a quick overview. 

The queries feature:
- The use of multi-table joins
- The application of aggregation, filtering, and sorting
- Country-level filtering (focusing on regions with enough data points to yield meaningful results)
- A breakdown of the exact types of Data Engineering roles specified in the job postings

### TL;DR 
Here are the files that will interest you the most:

1. [01_top_demanded_skills.sql](01_top_demanded_skills.sql)
2. [02_highest_paying_skills.sql](02_highest_paying_skills.sql)
3. [03_optimal_skills.sql](03_optimal_skills.sql)
4. [04_best_earning_country_remote.sql](04_best_earning_country_remote.sql)
5. [05_particular_job_listings_for_country.sql](05_particular_job_listings_for_country.sql)

## Problem & Context

Here is the structure of the database:

![](../Images/1_2_Data_Warehouse.png)

The main problems, which required more sophisticated methods, can be seen in [03_optimal_skills.sql](03_optimal_skills.sql). There, I use the natural logarithm function to smooth out the disparity between the number of postings and median yearly earnings. The graph illustrating this approach is shown below:

![](../Images/qPNNp.png)

## Tech Stack
Technologies used:

- [Motherduck](https://motherduck.com/) - to retrieve database info
- [DuckDB CLI](https://duckdb.org/) - a database engine that allows for user-friendly coding
- [SQL](https://pl.wikipedia.org/wiki/SQL) - the language used to write the queries
- [Visual Studio Code](https://code.visualstudio.com/) - the code editor used to integrate all the previously mentioned technologies

## Analysis Overview
The analysis reveals several clear trends:

1. Based on the most demanded skills, programming is by far the most essential skill in Data Engineering, closely followed by cloud infrastructure.
2. Less common skills tend to have a higher median salary due to their niche nature and a longer return on investment compared to more popular options.
3. Results within a single country – especially when the number of jobs collected in the database is small – can easily be skewed by a single company posting multiple high-salary listings for experts.
