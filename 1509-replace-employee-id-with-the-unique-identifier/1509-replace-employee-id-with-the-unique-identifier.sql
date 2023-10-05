# Write your MySQL query statement below
select b.unique_id, a.name from employees a left join EmployeeUni b on b.id = a.id