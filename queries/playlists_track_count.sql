SELECT COUNT(pt.TrackId) FROM PlaylistTrack pt
GROUP BY pt.PlaylistId;