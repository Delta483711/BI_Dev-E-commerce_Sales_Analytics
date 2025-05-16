
SELECT 
    P.ProductId,
    P.ProductName,
    B.BrandId,
    B.BrandName,
    C.CategoryId,
    C.CategoryName
FROM
   {{ref('stg_Products')}} P
LEFT JOIN 
    {{ref('stg_Brand')}} B
        on P.BrandId = B.BrandId
LEFT JOIN 
    {{ref('stg_Category')}} C
        on P.CategoryId = C.CategoryId