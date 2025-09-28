-- queries.sql
-- Solutions for Task 4: Aggregate functions and GROUP BY

-- 1) Total salary across the company
SELECT SUM(salary) AS total_salary FROM employees;

-- 2) Average salary by department (rounded to 2 decimals)
SELECT department, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department;

-- 3) Number of employees per department
SELECT department, COUNT(*) AS num_employees
FROM employees
GROUP BY department;

-- 4) Departments with more than 2 employees (use HAVING to filter groups)
SELECT department, COUNT(*) AS cnt, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

-- 5) Highest salary by department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 6) Sum of salary + bonus per department (handle NULL bonus using COALESCE)
SELECT department, SUM(salary + COALESCE(bonus,0)) AS total_compensation
FROM employees
GROUP BY department;

-- 7) Counting non-null bonuses vs all rows
SELECT COUNT(*) AS total_rows, COUNT(bonus) AS non_null_bonus_count FROM employees;

-- 8) Count distinct departments
SELECT COUNT(DISTINCT department) AS distinct_departments FROM employees;

-- 9) Group by multiple columns example (department and age bracket)
SELECT department, (CASE WHEN age < 30 THEN '<30' ELSE '30+' END) AS age_group,
       COUNT(*) AS cnt, ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY department, age_group;