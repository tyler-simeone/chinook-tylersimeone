SELECT sub.TrackName, sub.NumSold HighestSales
FROM 
	(SELECT t.Name TrackName, SUM(il.Quantity) NumSold
		FROM Track t
		JOIN InvoiceLine il
		ON il.TrackId = t.TrackId
		GROUP BY t.Name) sub
ORDER BY HighestSales DESC LIMIT 5;