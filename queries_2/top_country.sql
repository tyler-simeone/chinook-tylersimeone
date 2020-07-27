SELECT (c.FirstName || " " || c.LastName) Customer, i.BillingCountry, i.Total
FROM Invoice i 
JOIN Customer c
ON i.CustomerId = c.CustomerId
ORDER BY i.Total DESC;
