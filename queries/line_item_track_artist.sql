SELECT il.*, t.Name, t.Composer
FROM InvoiceLine il 
LEFT JOIN Track t 
ON il.TrackId = t.TrackId;