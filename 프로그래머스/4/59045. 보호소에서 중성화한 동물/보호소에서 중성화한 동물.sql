select o.animal_id, o.animal_type, o.name
    from animal_outs o left join animal_ins i using(animal_id)
    where i.sex_upon_intake like 'Intact%'
    and (o.sex_upon_outcome like 'Spayed%'
    or o.sex_upon_outcome like 'Neutered%')
    order by animal_id