# Write your MySQL query statement below
# Write your MySQL query statement below
select max(salary) AS SecondHighestSalary from employee where salary not in (select max(salary) from employee)