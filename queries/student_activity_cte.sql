/* =====================================================
   Case: Student Engagement Classification
   Objective:
   - Analyze student activity in the last 30 days
   - Classify students based on total activity minutes
   ===================================================== */

WITH recent_activity AS (
    -- Step 1: Get last 30 days of activity based on latest date in data
    SELECT
        student_id,
        activity_minutes
    FROM activity_log
    WHERE activity_date >= (
        SELECT MAX(activity_date) FROM activity_log
    ) - INTERVAL 30 DAY
),

total_activity AS (
    -- Step 2: Aggregate total activity per student
    SELECT
        student_id,
        SUM(activity_minutes) AS total_minutes
    FROM recent_activity
    GROUP BY student_id
),

student_status AS (
    -- Step 3: Assign engagement status
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

-- Final Output
SELECT
    s.name,
    ss.total_minutes,
    ss.status
FROM student_status ss
JOIN students s
    ON s.id = ss.student_id
ORDER BY ss.total_minutes DESC;
