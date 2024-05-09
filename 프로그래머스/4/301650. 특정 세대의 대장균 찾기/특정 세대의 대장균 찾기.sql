with two_gen as (
    select id from ecoli_data
    where parent_id in (
        select id from ecoli_data where parent_id is null
    )
)
select id from ecoli_data
    where parent_id in (select id from two_gen)
    order by id