-- Create table to join the orders status and customers --

SELECT
    ORD.OrderId,
    ORD.OrderCreationDate,
    S.StatusName,
    C.CustomerName
FROM 
    {{ref('stg_Orders')}} ORD
LEFT JOIN 
    {{ref('stg_Status')}} S
        ON S.StatusId = ORD.StatusId
LEFT JOIN   {{ref('stg_Customer')}} C
    ON C.CustomerId = ORD.CustomerId
