-- Stage model for orders table 


WITH Orders AS
(
SELECT
    order_id as OrderId,
    CASE
        WHEN customer_id IS NULL THEN 0
        ELSE customer_id 
    END
        AS CustomerId,
    order_date AS OrderCreationDate,
    status_id as StatusId
FROM 
public.orders 
)

SELECT * FROM Orders