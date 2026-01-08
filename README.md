# SQL Data Analyst Portfolio

A SQL portfolio showcasing **Junior Data Analyst** skills through realistic, problem-driven case studies.  
This repository emphasizes clean querying, proper table relationships, aggregation logic, and exploratory data analysis using SQL.

---

## 📌 Overview
This repository contains a collection of SQL queries that demonstrate **basic to intermediate Junior Data Analyst competencies**.  
The analysis approach is **problem-driven**, focusing on answering business questions rather than simply displaying data.

Key focus areas:
- Clean and structured data querying
- Understanding relational data models
- Aggregation and business logic
- Exploratory Data Analysis (EDA) using SQL

---

## 🗂️ Dataset & Schema
The dataset simulates an online education platform with the following core tables:

- **students**  
  Stores student information  
  `(id, name, gender, education_level, registered_at)`

- **courses**  
  Stores course information  
  `(id, course_name)`

- **enrollments**  
  Student–course relationship table  
  `(student_id, course_id, enrolled_at, progress_percent)`

- **activity_log**  
  Daily student activity records  
  `(student_id, activity_date, activity_minutes)`

### Table Relationships
- `students.id → enrollments.student_id`
- `courses.id → enrollments.course_id`
- `students.id → activity_log.student_id`

---

## 🧠 Key SQL Skills Demonstrated
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- `INNER JOIN` and `LEFT JOIN`
- Handling `NULL` and missing data
- Aggregations: `COUNT`, `COUNT DISTINCT`, `SUM`, `AVG`
- `HAVING` vs `WHERE`
- `CASE WHEN` for categorization
- Time-based filtering
- Common Table Expressions (CTE)

---

## 📊 SQL Case Studies

### 1️⃣ Student Engagement Analysis (CTE & Aggregation)
Analyze student activity over the last 30 days and classify engagement levels based on total activity minutes.

**Key objectives:**
- Aggregate total activity minutes per student
- Classify engagement using business rules
- Identify highly engaged students

📁 Query file:  
`queries/student_activity_cte.sql`

📈 Insights:

- Student activity is unevenly distributed, where a small group of students contributes significantly more activity minutes than the rest.
- Most students fall into the Inactive or Active categories, indicating that high engagement is limited to a minority.
- Total activity minutes over a 30-day window provide a clear and interpretable signal for engagement segmentation.
- This classification can be used to:
    - identify high-engagement students for advanced programs
    - detect low-engagement students for early intervention or reminders

---

### 2️⃣ Course Engagement Funnel Analysis (Retention & Funnel)
Analyze the engagement funnel from course enrollment to activity consistency, including student drop-off detection.

**Metrics covered:**
- Total enrolled students
- Active students (≥ 1 activity)
- Consistent students (≥ 3 active days)
- Drop-off students (no recorded activity)

📁 Query file:  
`queries/course_engagement_funnel.sql`

📈 Insights:

- Not all enrolled students become active, showing a noticeable drop-off after enrollment.
- Only a subset of active students reaches the consistent engagement stage (≥ 3 active days).
- Courses with higher proportions of consistent students tend to indicate:
  - better course design
  - clearer learning paths
  - stronger onboarding experience
- Funnel metrics help quantify where engagement loss occurs, supporting:
  - retention strategy planning
  - course quality evaluation
  - targeted engagement improvements

---

## 🛠️ Tools & Environment
- SQL (MySQL)
- Local database environment
- Git & GitHub

---

## 📬 Notes
This portfolio is a **living document** and will continue to evolve with more advanced analytical cases, improved business logic, and performance considerations.
