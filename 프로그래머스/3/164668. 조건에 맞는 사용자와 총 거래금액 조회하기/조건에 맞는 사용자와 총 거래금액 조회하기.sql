SELECT USER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
    FROM USED_GOODS_BOARD, USED_GOODS_USER
    WHERE WRITER_ID = USER_ID
    AND STATUS = "DONE"
    GROUP BY USER_ID
    HAVING TOTAL_SALES >= 700000
    ORDER BY TOTAL_SALES