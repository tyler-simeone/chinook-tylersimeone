SELECT (c.FirstName || " " || c.LastName) as FullName,
i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer c
LEFT JOIN Invoice i 
ON i.CustomerId = c.CustomerId
WHERE c.Country LIKE "Brazil";