# USDA Dairy SQL Project 

## Scenario
As a **Data Scientist at USDA**, I worked with datasets tracking production of agricultural commodities 
(milk, cheese, yogurt, eggs, honey, coffee) across multiple states and years.

The goal was to answer business questions from managers and stakeholders using **SQL (SQLite)**.

---

## Objectives
- Assess production **state by state** for each commodity.
- Identify **trends** and **outliers**.
- Provide **data-driven insights** for decision-making.

---

## My Approach
1. **Data Cleaning**  
   - Removed commas from `Value` columns.  
   - Ensured consistent numeric formats.  

2. **SQL Queries**  
   - Wrote queries to answer real-world questions (totals, averages, comparisons, missing data checks).  
   - Used `JOIN`, `GROUP BY`, `HAVING`, and subqueries effectively.  

3. **Documentation**  
   - Stored all queries in `queries.sql`.  
   - Collected all answers in `answers.txt` (numeric only for autograder).  

---

## Example Insights
- **Q1:** Total milk production in 2023 → `91812000000`  
- **Q2:** Number of states with cheese > 100M in April 2023 → `2`  
- **Q5:** ANSI code for Florida → `12`  
- **Q9:** Delaware produced cheese in April 2023? → `0`  

👉 See full set of questions and answers in [`answers.txt`](answers.txt).

---

## Why This Matters
This project shows:
- I can **translate business questions** into SQL queries.  
- I understand **data cleaning, aggregation, and analysis**.  
- I document work clearly for **reproducibility**.  

---

## Files
- `queries.sql` → All SQL queries with comments.  
- `answers.txt` → Final numeric answers.  
- `README.md` → Project story (this file).  

---

## Skills Demonstrated
- SQL (SQLite): `SELECT`, `JOIN`, `GROUP BY`, `HAVING`, `AVG`, `SUM`  
- Data Cleaning & Preparation  
- Business-driven Data Analysis  
- Technical Documentation on GitHub  
