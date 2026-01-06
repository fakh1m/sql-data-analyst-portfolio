WITH student_activity_days AS (
    -- Hitung jumlah hari aktif per student
    SELECT
        student_id,
        COUNT(DISTINCT activity_date) AS active_days
    FROM activity_log
    GROUP BY student_id
)

SELECT
    c.course_name,

    -- Total student yang enroll ke course
    COUNT(DISTINCT e.student_id) AS total_enrolled,

    -- Student yang punya minimal 1 aktivitas
    COUNT(DISTINCT CASE
        WHEN sad.active_days >= 1 THEN e.student_id
    END) AS active_students,

    -- Student yang konsisten (>= 3 hari aktif)
    COUNT(DISTINCT CASE
        WHEN sad.active_days >= 3 THEN e.student_id
    END) AS consistent_students,

    -- Student yang drop (tidak punya aktivitas sama sekali)
    COUNT(DISTINCT CASE
        WHEN sad.student_id IS NULL THEN e.student_id
    END) AS drop_students

FROM courses c
JOIN enrollments e
    ON c.id = e.course_id
LEFT JOIN student_activity_days sad
    ON e.student_id = sad.student_id

GROUP BY c.course_name
ORDER BY total_enrolled DESC;
