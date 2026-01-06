-- Student Activity Analysis
SELECT
    student_id,
    SUM(activity_minutes) AS total_minutes
FROM activity_log
GROUP BY student_id
ORDER BY total_minutes DESC;
