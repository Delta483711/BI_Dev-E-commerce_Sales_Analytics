

WITH Category AS
(
SELECT
    category_id as CategoryId,
    name as CategoryName
FROM
    category 
)

SELECT * FROM Category