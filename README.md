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

## 🧩 Example Highlight — Student Activity Status (CTE)

Query berikut menunjukkan bagaimana CTE digunakan untuk memecah logic analisis menjadi beberapa langkah yang jelas dan readable:

```sql
WITH recent_activity AS (
    SELECT student_id, activity_minutes
    FROM activity_log
    WHERE activity_date >= DATE_SUB(
        (SELECT MAX(activity_date) FROM activity_log),
        INTERVAL 30 DAY
    )
),

total_activity AS (
    SELECT student_id, SUM(activity_minutes) AS total_minutes
    FROM recent_activity
    GROUP BY student_id
),

student_status AS (
    SELECT
        student_id,
        total_minutes,
        CASE
            WHEN total_minutes >= 300 THEN 'Very Active'
            WHEN total_minutes >= 100 THEN 'Active'
            ELSE 'Inactive'
        END AS status
    FROM total_activity
)

SELECT
    s.name,
    ss.total_minutes,
    ss.status
FROM student_status ss
JOIN students s ON s.id = ss.student_id
ORDER BY ss.total_minutes DESC;
```

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
