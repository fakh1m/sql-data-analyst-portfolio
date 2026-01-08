# SQL Data Analyst Portfolio

A SQL portfolio showcasing **junior-level data analyst** skills through
realistic, problem-driven analytical case studies.

This repository focuses on structured querying, table relationships,
aggregation logic, and translating data into business-relevant insights.

---

## 📌 Overview
This repository contains a collection of SQL case studies designed to
demonstrate **basic to intermediate SQL proficiency** for data analysis roles.

The approach emphasizes **problem-solving and analytical thinking**, not
simply data extraction.

Core focus areas:
- Clean and readable SQL queries
- Understanding table relationships
- Aggregation and business logic
- Exploratory analysis using SQL

---

## 🗂 Dataset & Schema
The dataset simulates an online education platform with the following tables:

- **students**  
  `(id, name, gender, education_level, registered_at)`

- **courses**  
  `(id, course_name)`

- **enrollments**  
  `(student_id, course_id, enrolled_at, progress_percent)`

- **activity_log**  
  `(student_id, activity_date, activity_minutes)`

**Key relationships:**
- `students.id → enrollments.student_id`
- `courses.id → enrollments.course_id`
- `students.id → activity_log.student_id`

---

## 🧠 SQL Skills Demonstrated
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- `INNER JOIN` and `LEFT JOIN`
- Handling missing data and `NULL` values
- Aggregation: `COUNT`, `COUNT DISTINCT`, `SUM`, `AVG`
- `HAVING` vs `WHERE`
- Conditional logic using `CASE WHEN`
- Time-based filtering
- Common Table Expressions (CTE)

---

## 📊 SQL Case Studies

### 1️⃣ Student Engagement Analysis
Classifies students based on total activity minutes within the last 30 days.

📁 Query: `queries/student_activity_cte.sql`  
📄 Insight: `insights/case_1_student_engagement.md`

---

### 2️⃣ Course Engagement Funnel Analysis
Analyzes student engagement per course from enrollment to activity consistency,
including drop-off detection.

📁 Query: `queries/course_engagement_funnel.sql`  
📄 Insight: `insights/case_2_course_funnel.md`

---

### 3️⃣ Cohort Retention Analysis
Examines student retention behavior across monthly cohorts based on
registration date and subsequent activity.

📁 Query: `queries/cohort_retention.sql`  
📄 Insight: `insights/case_3_cohort_retention.md`

---

## 📈 Key Insights
Each case study includes **business-oriented insights** derived from SQL analysis.
Detailed interpretations and explanations are documented separately
in the `insights/` folder.

---

## 🛠 Tools & Environment
- SQL (MySQL-compatible syntax)
- Local database environment
- Git & GitHub

---

## 🎯 Purpose
This project serves as a portfolio piece to demonstrate
junior-level data analyst skills, including SQL proficiency,
analytical reasoning, and the ability to translate data
into meaningful business insights.
