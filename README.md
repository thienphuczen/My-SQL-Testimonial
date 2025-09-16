# My-SQL-Testimonial
# USDA Dairy SQL – SQLite Project

**Scenario:** Data Scientist @ USDA.  
Datasets: `milk_production`, `cheese_production`, `coffee_production`, `honey_production`, `yogurt_production`, `state_lookup`.  
Goal: Answer planning questions with SQL; outputs must be numeric-only (no commas).

## Notes
- DB: **SQLite**
- Data cleaned: commas removed from `Value` in all *_production tables.
- Answers for autograder: see `answers.txt` (numbers only, no commas).

## Run (SQLite CLI)
.mode csv
-- import your CSVs into tables with matching names if needed
.read queries.sql
