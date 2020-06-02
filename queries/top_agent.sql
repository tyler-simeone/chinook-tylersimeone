SELECT sub.agent AS "Sales Agent", MAX(sub.top) AS "Top 2009 Sales"
FROM
(SELECT e.FirstName || " " || e.LastName AS agent, printf("%.2f", SUM(i.Total)) AS top 
		FROM Employee e
		JOIN Customer c ON e.EmployeeId = c.SupportRepId
		JOIN Invoice i ON c.CustomerId = i.CustomerId
		GROUP BY e.EmployeeId) sub;