SELECT (e.FirstName || " " || e.LastName) FullName, i.*, c.SupportRepId
FROM Employee e 
LEFT JOIN Customer c 
ON c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i 
ON i.CustomerId = c.CustomerId
WHERE i.InvoiceId IS NOT NULL;