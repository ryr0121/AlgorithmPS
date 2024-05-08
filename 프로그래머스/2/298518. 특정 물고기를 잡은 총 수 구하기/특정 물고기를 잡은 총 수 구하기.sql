select count(*) fish_count 
    from fish_info left join fish_name_info using(fish_type)
    where fish_name in ('BASS','SNAPPER')