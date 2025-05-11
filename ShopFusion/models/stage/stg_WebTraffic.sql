--

WITH WebTraffic AS 
(
SELECT 
    visit_id AS VisitId,
    timestamp AS VisitTimestamp,
    page as Page,
    session_id AS SessionId,
    customer_id AS CustomerId,
    referral_source AS ReferralSource
FROM
    web_traffic
)

SELECT * FROM WebTraffic