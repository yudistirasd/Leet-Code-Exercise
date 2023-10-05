# Write your MySQL query statement below
select a.customer_id, count(*) as count_no_trans from Visits a left join transactions b on b.visit_id = a.visit_id
where b.transaction_id is null group by a.customer_id