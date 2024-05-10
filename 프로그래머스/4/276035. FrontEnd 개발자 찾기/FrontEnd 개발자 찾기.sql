with frontend as (
    select distinct d.id
    from skillcodes s join developers d
    on s.code & d.skill_code = s.code
    where s.category = "Front End"
    order by d.id
)

select id, email, first_name, last_name from developers
    where id in (select * from frontend)
    order by id