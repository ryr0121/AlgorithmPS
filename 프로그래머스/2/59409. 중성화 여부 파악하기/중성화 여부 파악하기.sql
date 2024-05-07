select animal_id, name, if(sex_upon_intake like 'Intact%','X','O') 중성화 
    from animal_ins