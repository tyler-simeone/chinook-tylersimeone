-- This one was challenging for me as I was grouping by the TrackId rather than Track Name, so the aggregate function wasn't adding anything as every TrackId is unique.. Makes a lot more sense now why we'd group by Track Name, where a name could be listed on multiple invoice lines due to the many-to-many relationship between Tracks and Invoices.


SELECT sub.Track, MAX(sub.NumSold) NumSold
FROM 
	(SELECT t.Name Track, SUM(il.Quantity) NumSold, 					i.InvoiceDate
			FROM Track t
			JOIN InvoiceLine il ON il.TrackId = t.TrackId
			JOIN Invoice i ON i.InvoiceId = il.InvoiceId
			WHERE i.InvoiceDate LIKE "2013-%"
			GROUP BY t.Name
			ORDER BY NumSold DESC) sub;
