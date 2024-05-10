select year(sales_date) year, month(sales_date) month,
    count(distinct user_id) purchased_users,
    round(count(distinct user_id)/(
        select count(distinct user_id) from user_info
        where year(joined) = 2021
    ),1) purchased_ratio
    from online_sale left join user_info using(user_id)
    where year(joined) = 2021
    group by year, month
    order by year, month