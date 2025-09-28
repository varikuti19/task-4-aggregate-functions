# Task 4 — Aggregate Functions & Grouping (Solutions & Explanations)

This file explains the SQL queries provided and answers the interview-style questions.

## Key solution queries (see `sql/queries.sql`)
- SUM, AVG, COUNT, MAX are used to summarize numeric data.
- GROUP BY groups rows by one or more columns; HAVING filters groups (unlike WHERE which filters rows before grouping).
- COALESCE (or IFNULL in some DBs) handles NULLs in arithmetic.

## Short answers to interview questions

1. **What is GROUP BY?**  
   `GROUP BY` groups rows that have the same values in specified columns; aggregate functions (SUM, COUNT, AVG) compute summaries per group.

2. **Difference between WHERE and HAVING?**  
   `WHERE` filters rows before aggregation. `HAVING` filters groups after aggregation.

3. **How does COUNT(*) differ from COUNT(column)?**  
   `COUNT(*)` counts all rows. `COUNT(column)` counts only non-NULL values in that column.

4. **Can you group by multiple columns?**  
   Yes — e.g. `GROUP BY department, age_group` groups by unique department+age_group combinations.

5. **What is ROUND() used for?**  
   `ROUND(value, decimals)` rounds numeric results to the specified decimal places.

6. **How do you find the highest salary by department?**  
   `SELECT department, MAX(salary) FROM employees GROUP BY department;`

7. **What is the default behavior of GROUP BY?**  
   It groups rows based on the listed columns; non-aggregated columns should be in GROUP BY (DBMS-specific tolerances vary).

8. **Explain AVG and SUM.**  
   `AVG(col)` returns the arithmetic mean of non-NULL values. `SUM(col)` returns the sum of non-NULL values.

9. **How to count distinct values?**  
   `COUNT(DISTINCT column)` counts unique values (excluding NULL).

10. **What is an aggregate function?**  
   A function that returns a single summarized value from multiple rows (e.g., SUM, AVG, COUNT, MAX, MIN).

## How to run (SQLite)
1. Open DB Browser for SQLite or use sqlite3 CLI.
2. Load `sql/create_db.sql` to create the table and inserts.
3. Run the queries in `sql/queries.sql`.

## Notes
- Files included:
  - `dataset/employees.csv` — sample CSV data
  - `sql/create_db.sql` — schema + inserts
  - `sql/queries.sql` — solution queries
  - `employees.db` — pre-built SQLite database (same data)
  - `README.md` — this repo guide