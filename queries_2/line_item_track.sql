SELECT t.Name, il.*
FROM Track t 
LEFT JOIN InvoiceLine il 
ON il.TrackId = t.TrackId;