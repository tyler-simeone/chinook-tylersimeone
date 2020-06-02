SELECT x.media AS "Media Type", MAX(x.num) AS "Amount of Media Sold"
	FROM 
		(SELECT m.Name AS media, SUM(il.Quantity) AS num
		FROM MediaType m
		JOIN Track t ON t.MediaTypeId = m.MediaTypeId
		JOIN InvoiceLine il ON t.TrackId = il.TrackId
		GROUP BY m.Name
		) x;