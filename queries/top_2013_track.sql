SELECT x.Song AS "Song" , MAX(x.Num) AS "Times Purchased"
FROM 
	(SELECT t.Name AS Song, SUM(il.Quantity) AS Num, i.InvoiceDate
		FROM Invoice i
		JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
		JOIN Track t ON il.TrackId = t.TrackId
		WHERE i.InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
		GROUP BY t.Name) x;