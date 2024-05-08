select distinct car_id 
    from car_rental_company_rental_history left join car_rental_company_car 
    using(car_id)
    where car_type = '세단'
    and month(start_date) = 10
    order by car_id desc