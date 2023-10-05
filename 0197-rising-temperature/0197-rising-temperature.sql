# Write your MySQL query statement below
SELECT a.id
FROM Weather AS a , Weather AS b
WHERE a.Temperature > b.Temperature AND DATEDIFF(a.recordDate , b.recordDate) = 1