select history_id, 
    round(daily_fee * 
        case
            when datediff(end_date,start_date) + 1 >= 90 then (select (1 - discount_rate * 0.01) from car_rental_company_discount_plan where car_type = '트럭' and duration_type = '90일 이상')
            when datediff(end_date,start_date) + 1 >= 30 then (select (1 - discount_rate * 0.01) from car_rental_company_discount_plan where car_type = '트럭' and duration_type = '30일 이상')
            when datediff(end_date,start_date) + 1 >= 7 then (select (1 - discount_rate * 0.01) from car_rental_company_discount_plan where car_type = '트럭' and duration_type = '7일 이상')
            else 1
        end
          , 0) * (datediff(end_date,start_date) + 1) as fee
    from car_rental_company_rental_history left join car_rental_company_car
    using(car_id)
    where car_type = '트럭'
    order by fee desc, history_id desc