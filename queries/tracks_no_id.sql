SELECT t.Name TrackName, a.Title AlbumTitle, mt.Name MediaType, g.Name Genre
FROM Track t 
LEFT JOIN Album a ON t.AlbumId = a.AlbumId
LEFT JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
LEFT JOIN Genre g ON t.GenreId = g.GenreId;