# Write your MySQL query statement below
select machine_id, round(avg(process_time), 3) as processing_time  from (
	select machine_id,(
				case 
					when activity_type = 'end' then
						timestamp - LAG(timestamp) over (partition by machine_id, process_id ORDER BY activity_type ASC)
				end
		) as process_time 
	from activity order by machine_id
	) as t1
group by machine_id
order by processing_time desc