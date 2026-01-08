WITH cohort_activity AS (
    -- Base table: student × cohort month × activity month
    SELECT DISTINCT
        s.id AS student_id,
        DATE_FORMAT(s.registered_at, '%Y-%m') AS cohort_month,
        DATE_FORMAT(a.activity_date, '%Y-%m') AS activity_month
    FROM students s
    LEFT JOIN activity_log a
        ON s.id = a.student_id
       AND a.activity_date >= s.registered_at
),

cohort_size AS (
    -- Total students per cohort
    SELECT
        cohort_month,
        COUNT(DISTINCT student_id) AS total_students
    FROM cohort_activity
    GROUP BY cohort_month
),

retention_summary AS (
    -- Retained students per cohort per activity month
    SELECT
        cohort_month,
        activity_month,
        COUNT(DISTINCT student_id) AS retained_students
    FROM cohort_activity
    WHERE activity_month IS NOT NULL
    GROUP BY cohort_month, activity_month
)

SELECT
    rs.cohort_month,
    rs.activity_month,
    cs.total_students,
    rs.retained_students,
    ROUND(
        rs.retained_students * 100.0 / cs.total_students,
        2
    ) AS retention_rate_pct
FROM retention_summary rs
JOIN cohort_size cs
    ON rs.cohort_month = cs.cohort_month
ORDER BY rs.cohort_month, rs.activity_month;
