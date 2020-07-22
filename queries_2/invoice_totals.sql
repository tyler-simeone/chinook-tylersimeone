SELECT i.Total InvoiceTotal, (c.FirstName || " " || c.LastName) Customer, c.Country, (e.FirstName || " " || e.LastName) SalesAgent
FROM Customer c 
LEFT JOIN Employee e 
ON e.EmployeeId = c.SupportRepId
LEFT JOIN Invoice i 
ON i.CustomerId = c.CustomerId;