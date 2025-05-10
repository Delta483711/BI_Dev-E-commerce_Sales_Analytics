-- Stage model for the Status table 


WITH Sts  AS 
(
SELECT 
    status_id AS StatusId,
    CASE
        WHEN name IS NULL THEN 'N/A' 
        WHEN name = '' THEN 'N/A'
        ELSE name
    END
    AS StatusName
FROM 
    public.status
) 

SELECT * FROM Sts