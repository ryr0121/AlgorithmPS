with max_writer as (
    select member_id, count(review_score) count
    from rest_review
    group by member_id
    order by count desc
    limit 1
)
select member_name, review_text, date_format(review_date,'%Y-%m-%d') review_date
    from rest_review left join member_profile using(member_id)
    where member_id = (select member_id from max_writer)
    order by review_date, review_text