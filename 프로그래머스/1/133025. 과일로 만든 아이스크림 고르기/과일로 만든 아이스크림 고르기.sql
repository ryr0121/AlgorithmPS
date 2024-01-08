-- 코드를 입력하세요
SELECT FIRST_HALF.FLAVOR FROM FIRST_HALF, ICECREAM_INFO
    WHERE TOTAL_ORDER > 3000
    AND FIRST_HALF.FLAVOR = ICECREAM_INFO.FLAVOR
    AND ICECREAM_INFO.INGREDIENT_TYPE = 'fruit_based'
    ORDER BY TOTAL_ORDER DESC