-- Stage model for customers table 


WITH Customer AS 
(

SELECT
    customer_id AS CustomerId,
    name AS CustomerName,
    reference AS CustomerReference,
    signup_date AS CreationDate,
    region,
    CASE 
        WHEN 
            UPPER(gender) = 'MALE' THEN 'Male'
        WHEN 
             UPPER(gender) = 'FEMALE'THEN 'Female'
        ELSE 
            'Other'
        END
    AS Gender
FROM 
    public.customers
) 

SELECT 
* 
FROM 
    Customer