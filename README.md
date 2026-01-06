# SQL Data Analyst Portfolio

SQL portfolio showcasing **junior data analyst** skills through realistic, problem-driven case studies.  
This repository focuses on clean querying, table relationships, aggregation logic, and exploratory analysis using SQL.

---

## 📌 Overview
Repository ini berisi kumpulan query SQL yang merepresentasikan kemampuan **Junior Data Analyst level basic–intermediate**.  
Pendekatan yang digunakan adalah **problem-driven analysis**, bukan sekadar menampilkan data.

Fokus utama:
- Data querying yang rapi & terstruktur
- Pemahaman relasi antar tabel
- Agregasi & business logic
- Exploratory Data Analysis (EDA) berbasis SQL

---

## 🗂️ Dataset & Schema
Dataset bersifat simulasi platform edukasi online dengan tabel utama:

- **students**  
  Menyimpan informasi student  
  `(id, name, gender, education_level, registered_at)`

- **courses**  
  Informasi course  
  `(id, course_name)`

- **enrollments**  
  Relasi student–course  
  `(student_id, course_id, enrolled_at, progress_percent)`

- **activity_log**  
  Aktivitas student harian  
  `(student_id, activity_date, activity_minutes)`

**Relasi utama:**
- `students.id → enrollments.student_id`
- `courses.id → enrollments.course_id`
- `students.id → activity_log.student_id`

---

## 🧠 Key SQL Skills Demonstrated
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- `INNER JOIN` & `LEFT JOIN`
- Handling `NULL` & missing data
- Aggregation: `COUNT`, `COUNT DISTINCT`, `SUM`, `AVG`
- `HAVING` vs `WHERE`
- `CASE WHEN` (categorization)
- Time-based filtering
- Common Table Expression (CTE)

---

## 📊 SQL Case Studies

### 1️⃣ Student Engagement Analysis (CTE & Aggregation)
Analyze student activity in the last 30 days to classify engagement levels based on total activity minutes.

📁 Query: `queries/student_activity_cte.sql`

---

### 2️⃣ Course Engagement Funnel Analysis (Retention & Funnel)
Analyze the engagement funnel from enrollment to activity consistency per course, including drop-off detection.

📁 Query: `queries/course_engagement_funnel.sql`

**Metrics covered:**
- Total enrolled students
- Active students (≥ 1 activity)
- Consistent students (≥ 3 active days)
- Drop-off students (no activity)

---

## 📈 Example Insight
Sebagian kecil student memiliki tingkat aktivitas yang jauh lebih tinggi dibanding mayoritas.  
Segmentasi engagement membantu identifikasi student potensial untuk strategi **retention**, **intervensi pembelajaran**, atau **program lanjutan**.

---

## 🛠️ Tools & Environment
- SQL (MySQL)
- Local database environment
- Git & GitHub

---

## 📬 Notes
This portfolio is a **living document** and will continue to evolve with more advanced analytical cases and improved business logic.
