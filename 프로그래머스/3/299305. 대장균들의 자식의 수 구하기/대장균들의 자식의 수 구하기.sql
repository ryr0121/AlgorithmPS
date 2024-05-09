with cnt as (
    select distinct parent_id, count(*) count
    from ecoli_data 
    where parent_id is not null
    group by parent_id
)
select id, ifnull(count, 0) child_count
    from ecoli_data e left join cnt c
    on e.id = c.parent_id
    order by id