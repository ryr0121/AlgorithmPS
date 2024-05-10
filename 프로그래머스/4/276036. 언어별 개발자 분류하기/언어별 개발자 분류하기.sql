with fecode as (select sum(code) as fecode from skillcodes where category = 'Front End'), 
    pycode as(select code as pycode from skillcodes where name = 'Python'), 
    cscode as(select code as cscode from skillcodes where name = 'C#'), 
    grdevs as(
        select
        case
            when (skill_code & fecode) and (skill_code & pycode) then 'A'
            when skill_code & cscode then 'B'
            when skill_code & fecode then 'C'
        end as grade
        , id, email
        from developers, fecode, pycode, cscode
    )
select * from grdevs where grade is not null order by grade, id