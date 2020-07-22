SELECT t.Name, art.Name ArtistName, il.*
FROM Track t 
LEFT JOIN Album
ON Album.AlbumId = t.AlbumId
LEFT JOIN Artist art 
ON art.ArtistId = Album.ArtistId
LEFT JOIN InvoiceLine il 
ON il.TrackId = t.TrackId;