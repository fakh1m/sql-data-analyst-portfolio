# sql-data-analyst-portfolio
SQL portfolio showcasing junior data analyst skills: joins, aggregation, CTE, and exploratory analysis.

## 📌 Overview

Repository ini berisi kumpulan query SQL yang merepresentasikan **kemampuan dasar hingga menengah seorang Junior Data Analyst**. Fokus utama portofolio ini adalah:

* data querying yang rapi
* pemahaman relasi tabel
* agregasi & business logic
* exploratory data analysis (EDA) berbasis SQL

Semua query ditulis dengan pendekatan **problem-driven**, bukan sekadar menampilkan data.

---

## 🗂️ Dataset & Schema

Dataset bersifat simulasi platform edukasi online dengan tabel utama:

* **students**
  Menyimpan informasi student (id, name, gender, education_level, registered_at)

* **courses**
  Informasi course (id, course_name)

* **enrollments**
  Relasi student–course (student_id, course_id, enrolled_at, progress_percent)

* **activity_log**
  Aktivitas student harian (student_id, activity_date, activity_minutes)

Relasi utama:

* students.id → enrollments.student_id
* courses.id → enrollments.course_id
* students.id → activity_log.student_id

---

## 🎯 Business Questions Covered

Portofolio ini menjawab beberapa pertanyaan analitis, antara lain:

1. Siapa student terbaru yang mendaftar?
2. Bagaimana distribusi student berdasarkan gender?
3. Course mana yang paling banyak diikuti?
4. Bagaimana performa course berdasarkan progress student?
5. Student mana yang paling aktif dalam 30 hari terakhir?
6. Apakah ada student yang belum pernah mengikuti course?
7. Bagaimana engagement student jika dikelompokkan berdasarkan education level?

---

## 🧠 Key SQL Skills Demonstrated

* SELECT, WHERE, ORDER BY, LIMIT
* INNER JOIN & LEFT JOIN
* Handling NULL & missing data
* Aggregation: COUNT, COUNT DISTINCT, SUM, AVG
* HAVING vs WHERE
* CASE WHEN (categorization)
* Time-based filtering
* Common Table Expression (CTE)

---

## 📊 SQL Case Studies

### 1️⃣ Student Engagement Analysis
- Analyze student activity in the last 30 days
- Aggregate total activity minutes per student
- Classify engagement levels using business rules

📁 Query: `queries/student_activity_cte.sql`

---

### 2️⃣ Student Retention Funnel
- Identify active students in the last 30 days
- Measure engagement consistency using active days
- Classify retention level with HAVING-based filtering

📁 Query: `queries/student_retention_funnel.sql`

---

## 📈 Insight (Example)

* Sebagian kecil student memiliki total aktivitas yang jauh lebih tinggi dibanding mayoritas.
* Segmentasi status membantu identifikasi **high-engagement user** untuk kebutuhan retention atau program lanjutan.

---

## 🛠️ Tools & Environment

* SQL (MySQL)
* Local database environment
* Git & GitHub

---

## 📬 Notes

Portofolio ini bersifat **living document** dan akan terus dikembangkan seiring eksplorasi kasus analisis yang lebih kompleks.
