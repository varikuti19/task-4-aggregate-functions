# Task 4 — Aggregate Functions & Grouping

This repository contains sample data, SQL scripts, and solution queries for **Task 4: Aggregate Functions and Grouping**.

## Contents
- `dataset/employees.csv` — sample dataset
- `sql/create_db.sql` — schema and INSERT statements
- `sql/queries.sql` — solution queries using SUM, COUNT, AVG, GROUP BY, HAVING
- `employees.db` — ready-to-use SQLite DB
- `solution.md` — explanations and quick interview Q&A

## How to run locally (SQLite)
1. Install DB Browser for SQLite (or use `sqlite3` CLI).
2. Open `employees.db` directly, or execute `sql/create_db.sql` to recreate the DB.
3. Run queries from `sql/queries.sql`.

## How to upload to GitHub (two ways)

### A) Using Git (recommended)
1. Create a new **empty** GitHub repository (e.g., `task-4-aggregate-functions`).
2. On your local machine:
```bash
# inside the folder you extracted or downloaded
git init
git branch -M main
git add .
git commit -m "Task 4: Aggregate functions and grouping — initial commit"
# replace <USERNAME> and <REPO> with your GitHub username and repo name
git remote add origin https://github.com/<USERNAME>/<REPO>.git
git push -u origin main
```

### B) Using GitHub web UI (quick)
1. Create a new repository on GitHub.
2. Click **Add file → Upload files** and drag & drop the repository contents (recommended: upload extracted files, not the ZIP).
3. Commit the changes.

## Submission
After you push/upload your repository:
1. Copy the repository URL (e.g. `https://github.com/<USERNAME>/<REPO>`).
2. Paste it into the submission Google Form provided by the task co-ordinators.

(If you need, the sample form link appears in your task sheet.)