SELECT il.*, t.Name
FROM InvoiceLine il 
LEFT JOIN Track t 
ON il.TrackId = t.TrackId;
