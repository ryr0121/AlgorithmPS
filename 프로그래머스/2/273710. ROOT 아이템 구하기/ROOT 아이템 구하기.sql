select i.item_id, item_name 
    from item_info i left join item_tree using(item_id)
    where parent_item_id is null
    order by i.item_id