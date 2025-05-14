-- Stage model for Product table 
WITH Products AS 
(
SELECT
    product_id AS ProductId,
    name AS ProductName,
    category_id AS CategoryId,
    brand_id AS BrandId,
    price,
    created_at as ProductCreationDate
FROM 
    products
)

SELECT * FROM Products