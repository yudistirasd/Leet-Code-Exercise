# Write your MySQL query statement below
select user_id, round(avg(confirmed), 2) as confirmation_rate  from (
SELECT
	a.user_id,
	(
		CASE 
			WHEN b.action = 'confirmed' THEN 
				1
			ELSE 
				0
		END
	) as confirmed
FROM
	signups a
	LEFT JOIN confirmations b ON b.user_id = a.user_id
) t1
GROUP BY user_id