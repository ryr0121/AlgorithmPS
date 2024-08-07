WITH DEPT_INFO AS (
    SELECT DEPT_ID, COUNT(DEPT_ID) COUNT, SUM(SAL) TOTAL, ROUND(SUM(SAL)/COUNT(DEPT_ID),0) AVG_SAL
    FROM HR_EMPLOYEES
    GROUP BY DEPT_ID
)
SELECT I.DEPT_ID, DEPT_NAME_EN, AVG_SAL
    FROM DEPT_INFO I, HR_DEPARTMENT D
    WHERE I.DEPT_ID = D.DEPT_ID
    ORDER BY AVG_SAL DESC