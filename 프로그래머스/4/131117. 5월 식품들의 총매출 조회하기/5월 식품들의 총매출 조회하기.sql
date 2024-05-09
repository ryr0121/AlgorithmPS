select product_id, product_name, 
    sum(price*amount) total_sales
    from food_product left join food_order using(product_id)
    where date_format(produce_date,'%Y-%m') = '2022-05'
    group by product_id
    order by total_sales desc, product_id