-- Stage model for Order Items table 

WITH Order_Items AS 
(
    SELECT
        order_item_id AS OrderItemId,
        order_id AS OrderId,
        product_id AS ProductId,
        quantity AS Quantity,
        price AS Price
    FROM 
        order_items
)

SELECT * FROM Order_Items