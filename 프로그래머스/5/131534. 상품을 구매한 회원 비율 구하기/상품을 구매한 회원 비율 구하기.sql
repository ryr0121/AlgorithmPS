# with users_2021 as (
#     select distinct user_id from user_info
#     where year(joined) = 2021
# )
# select year(sales_date) year, month(sales_date) month,
#     count(distinct user_id) purchased_users,
#     round(count(*)/(select count(user_id) from users_2021),1) purchased_ratio
#     from users_2021 left join online_sale using(user_id)
#     where online_sale_id is not null
#     group by year, month
#     order by year, month
    
##
select year(sales_date) year, month(sales_date) month,
       count(distinct user_id) purchased_users,
       round(count(distinct user_id)/(
           select count(distinct user_id) from user_info
           where joined like '2021%'
       ),1) purchased_ratio
    from online_sale left join user_info using(user_id)
    where year(joined) = 2021
    group by year, month
    order by year, month