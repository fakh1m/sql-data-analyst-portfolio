WITH recent_activity AS (
    -- STEP 1: Ambil aktivitas 30 hari terakhir
    SELECT
        student_id,
        activity_date
    FROM activity_log
    WHERE activity_date >= (
        SELECT MAX(activity_date) FROM activity_log
    ) - INTERVAL 30 DAY
),

activity_summary AS (
    -- STEP 2: Hitung hari aktif & total aktivitas
    SELECT
        student_id,
        COUNT(DISTINCT activity_date) AS active_days
    FROM recent_activity
    GROUP BY student_id
    HAVING COUNT(DISTINCT activity_date) >= 3
),

retention_status AS (
    -- STEP 3: Klasifikasi retention
    SELECT
        student_id,
        active_days,
        CASE
            WHEN active_days >= 15 THEN 'Highly Retained'
            WHEN active_days >= 7 THEN 'Moderately Retained'
            ELSE 'Low Retention'
        END AS retention_level
    FROM activity_summary
)

-- FINAL OUTPUT
SELECT
    s.name,
    rs.active_days,
    rs.retention_level
FROM retention_status rs
JOIN students s
    ON s.id = rs.student_id
ORDER BY rs.active_days DESC;
