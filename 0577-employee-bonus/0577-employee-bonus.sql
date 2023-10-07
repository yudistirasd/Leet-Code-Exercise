# Write your MySQL query statement below
SELECT
	a.NAME,
	b.bonus 
FROM
	employee a
	LEFT JOIN bonus b ON b.empId = a.empId 
WHERE b.bonus < 1000 or b.bonus is null