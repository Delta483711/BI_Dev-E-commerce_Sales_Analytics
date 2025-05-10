-- Stage model for customers table 


WITH Customer AS 
(

SELECT
    customer_id AS CustomerId,
    signup_date AS CreationDate,
    region,
    gender
FROM 
    public.customers
) 

SELECT 
* 
FROM 
    Customer