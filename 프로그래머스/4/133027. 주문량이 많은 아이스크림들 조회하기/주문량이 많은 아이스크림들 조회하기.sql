with july_sum as (
    select flavor, sum(total_order) sum 
    from july group by flavor
)
select flavor
    from first_half f join july_sum j using(flavor)
    order by f.total_order+j.sum desc
    limit 3