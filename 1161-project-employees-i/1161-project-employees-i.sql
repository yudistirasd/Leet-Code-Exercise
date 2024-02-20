-- Write your PostgreSQL query statement below
select a.project_id, avg(b.experience_years)::numeric(10, 2) as average_years  from project a join employee b on a.employee_id = b.employee_id group by a.project_id order by a.project_id asc