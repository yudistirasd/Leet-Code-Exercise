-- Write your PostgreSQL query statement below
select contest_id, (sum(user_registered) / sum(user_count) * 100)::numeric(10, 2) as percentage from (
    select 
        a.contest_id,
        count(a.user_id) as user_registered,
        (select count(b.user_id) from users as b) as user_count
    from register as a
    group by a.contest_id
) as t1
group by contest_id
order by 2 desc, 1 asc