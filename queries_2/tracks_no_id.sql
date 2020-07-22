SELECT t.Name Track, al.Title Album, m.Name MediaType, g.Name Genre
FROM Track t
LEFT JOIN Album al 
ON t.AlbumId = al.AlbumId
LEFT JOIN MediaType m
ON t.MediaTypeId = m.MediaTypeId
LEFT JOIN Genre g 
ON t.GenreId = g.GenreId;