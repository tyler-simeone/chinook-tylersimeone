SELECT e.FirstName || " " || e.LastName AS "Sales Agent", COUNT(c.SupportRepId) AS "Customer Count"
FROM Employee e 
JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;