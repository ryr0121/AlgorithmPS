with rank_info as (
    select id, (percent_rank() over (order by size_of_colony desc)) as rank_per
    from ecoli_data
)
select id,
    (case
        when rank_per <= 0.25 then 'CRITICAL'
        when rank_per <= 0.5 then 'HIGH'
        when rank_per <= 0.75 then 'MEDIUM'
        else 'LOW'
    end) as colony_name
    from rank_info
    order by id