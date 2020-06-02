SELECT i.BillingCountry AS "Country", SUM(i.Total) AS "Total Sales"
FROM Invoice i
GROUP BY i.BillingCountry;