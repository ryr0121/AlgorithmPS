SELECT YEAR(SALES_DATE) YEAR, MONTH(SALES_DATE) MONTH, GENDER, COUNT(DISTINCT S.USER_ID) USERS
    FROM ONLINE_SALE S LEFT JOIN USER_INFO I USING (USER_ID)
    WHERE GENDER IS NOT NULL
    GROUP BY YEAR, MONTH, GENDER
    ORDER BY YEAR, MONTH, GENDER