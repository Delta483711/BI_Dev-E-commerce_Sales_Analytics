-- Create table for customer final --

SELECT
    C.CustomerId,
    C.CustomerName,
    C.CustomerReference,
    C.CreationDate,
    C.Region,
    C.Gender,
    WT.VisitId,
    WT.VisitTimestamp,
    WT.SessionId,
    WT.ReferralSource
FROM 
    {{ref('stg_Customer')}} C
LEFT JOIN
    {{ref('stg_WebTraffic')}} WT 
        ON WT.CustomerId = C.CustomerId

