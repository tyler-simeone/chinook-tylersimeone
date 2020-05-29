SELECT i.Total InvoiceTotal, c.FirstName, c.LastName, c.Country, e.FirstName, e.LastName
FROM Invoice i
LEFT JOIN Customer c ON i.CustomerId = c.CustomerId
LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId;