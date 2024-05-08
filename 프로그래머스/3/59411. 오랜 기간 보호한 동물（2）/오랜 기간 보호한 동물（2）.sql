select i.animal_id, o.name
    from animal_ins i left join animal_outs o using(animal_id)
    where o.datetime is not null
    order by datediff(o.datetime, i.datetime) desc
    limit 2