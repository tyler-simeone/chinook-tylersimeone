SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer c 
LEFT JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE c.Country == "Brazil";

