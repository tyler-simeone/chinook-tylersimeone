SELECT ar.Name Artist, SUM(il.Quantity) RecordsSold
	FROM Track t
	JOIN InvoiceLine il
	ON t.TrackId = il.TrackId
	JOIN Album al 
	ON t.AlbumId = al.AlbumId
	JOIN Artist ar 
	ON ar.ArtistId = al.ArtistId
GROUP BY Artist
ORDER BY RecordsSold DESC LIMIT 3;