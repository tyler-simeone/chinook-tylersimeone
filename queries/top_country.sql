SELECT sub.country AS "Country", MAX(sub.total) AS "Sales"
FROM 
	(SELECT i.BillingCountry AS country, SUM(i.Total) AS total
	FROM Invoice i
	GROUP BY i.BillingCountry) sub;