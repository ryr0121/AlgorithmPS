SELECT LEFT(PRODUCT_CODE,2) CATEGORY, COUNT(*) PRODUCTS
    FROM PRODUCT
    GROUP BY CATEGORY
    ORDER BY CATEGORY