SELECT p.Name, COUNT(pt.TrackId) Tracks
FROM PlaylistTrack pt 
LEFT JOIN Playlist p 
ON p.PlaylistId = pt.PlaylistId
GROUP BY pt.PlaylistId;