# Write your MySQL query statement below
# Write your MySQL query statement below
select
    a.id,
    (
        CASE
         WHEN a.p_id IS NULL THEN
            "Root"
         WHEN (select count(id) from tree b where b.p_id = a.id) > 0 THEN
            "Inner"
        ELSE
            "Leaf"
        END
    ) as type
from tree a