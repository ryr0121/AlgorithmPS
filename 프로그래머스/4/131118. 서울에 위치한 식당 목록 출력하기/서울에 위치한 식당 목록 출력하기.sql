with avg_review as (
    select rest_id, round(avg(review_score),2) scores
    from rest_review
    group by rest_id
) 

select rest_id, rest_name, food_type, favorites, address, scores
    from avg_review left join rest_info using(rest_id)
    where address like '서울%'
    order by scores desc, favorites desc