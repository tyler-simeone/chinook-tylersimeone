SELECT a.Name, SUM(il.Quantity) AS "Tracks Sold"
FROM Artist a
JOIN Album b ON b.ArtistId = a.ArtistId
JOIN Track t ON t.AlbumId = b.AlbumId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY a.Name
ORDER BY "Tracks Sold" DESC
LIMIT 3;