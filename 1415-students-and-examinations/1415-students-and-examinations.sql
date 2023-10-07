SELECT
	a.student_id, a.student_name, b.subject_name, count(c.student_id) as attended_exams 
FROM
	students a
CROSS JOIN subjects b
LEFT JOIN examinations c
	ON c.student_id = a.student_id and c.subject_name = b.subject_name
GROUP BY a.student_id, a.student_name, b.subject_name
ORDER BY a.student_id, b.subject_name