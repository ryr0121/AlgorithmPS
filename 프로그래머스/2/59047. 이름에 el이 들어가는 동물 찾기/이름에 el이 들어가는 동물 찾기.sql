SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
    WHERE ANIMAL_TYPE = "Dog"
    AND (NAME like "%el%"
    OR NAME like "%EL%")
    ORDER BY NAME