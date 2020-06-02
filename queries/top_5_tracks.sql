SELECT t.Name AS "Song", SUM(il.Quantity) AS "Times Purchased"
	FROM  InvoiceLine il
	JOIN Track t ON il.TrackId = t.TrackId
	GROUP BY t.Name
	ORDER BY "Times Purchased" DESC
	LIMIT 5;