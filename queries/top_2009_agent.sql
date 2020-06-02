SELECT sub.agent AS "Sales Agent", MAX(sub.top) AS "Top 2009 Sales"
FROM
(SELECT e.FirstName || " " || e.LastName AS agent, SUM(i.Total) AS top 
		FROM Employee e
		JOIN Customer c ON e.EmployeeId = c.SupportRepId
		JOIN Invoice i ON c.CustomerId = i.CustomerId
		AND i.InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31"
		GROUP BY e.EmployeeId) sub;