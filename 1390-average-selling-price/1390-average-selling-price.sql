# Write your MySQL query statement below
SELECT
	t1.product_id, 
	coalesce(
		round(sum(total_of_product) / sum(t1.units), 2), 0
	) as average_price 
FROM
	(
	SELECT
		a.product_id,
		a.price,
		b.units,
		price * units AS total_of_product 
	FROM
		prices a
		LEFT JOIN unitssold b ON b.product_id = a.product_id 
		AND b.purchase_date BETWEEN a.start_date 
	AND a.end_date 
	) t1
GROUP BY t1.product_id