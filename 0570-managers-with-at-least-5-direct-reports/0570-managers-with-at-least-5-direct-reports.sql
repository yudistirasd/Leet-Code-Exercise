# Write your MySQL query statement below
SELECT
	a.NAME 
FROM
	employee AS a
	JOIN employee AS b ON b.managerId = a.id 
GROUP BY
	b.managerId
HAVING count(b.managerId) >= 5