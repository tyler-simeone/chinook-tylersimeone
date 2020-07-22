SELECT (e.FirstName || " " || e.LastName) EmployeeName, ROUND(SUM(i.Total),2) InvoiceTotal
FROM Employee e
LEFT JOIN Customer c 
ON c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i 
ON i.CustomerId = c.CustomerId
WHERE e.Title = "Sales Support Agent"
GROUP BY EmployeeName;