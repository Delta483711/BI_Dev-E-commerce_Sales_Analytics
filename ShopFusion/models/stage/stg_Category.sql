

WITH Category AS
(
SELECT
    category_id as CategoryId,
    name as categoryName
FROM
    category 
)

SELECT * FROM Category