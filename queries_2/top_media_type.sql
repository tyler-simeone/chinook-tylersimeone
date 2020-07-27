SELECT mt.Name MediaType, SUM(il.Quantity) Quantity
	FROM Track t
	JOIN InvoiceLine il 
	ON t.TrackId = il.TrackId
	JOIN MediaType mt 
	ON t.MediaTypeId = mt.MediaTypeId
GROUP BY MediaType
ORDER BY Quantity DESC LIMIT 1;