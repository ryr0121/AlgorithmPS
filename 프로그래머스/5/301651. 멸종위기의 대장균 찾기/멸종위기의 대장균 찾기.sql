with recursive cte as (
    select id, parent_id, 1 as generation from ecoli_data
    where parent_id is null
    union all
    select child.id, child.parent_id, cte.generation + 1 
    from ecoli_data child join cte on child.parent_id = cte.id
)

select count(*) as count, generation from cte
    where id not in (select parent_id from ecoli_data where parent_id is not null)
    group by generation
    order by generation