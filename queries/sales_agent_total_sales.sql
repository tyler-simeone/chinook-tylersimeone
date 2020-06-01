SELECT il.InvoiceId, COUNT(*) Sales, i.CustomerId, c.SupportRepId, e.EmployeeId, e.FirstName, e.LastName
FROM InvoiceLine il 
LEFT JOIN Invoice i ON i.InvoiceId = il.InvoiceId
LEFT JOIN Customer c ON i.CustomerId = c.CustomerId
LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY il.InvoiceId;