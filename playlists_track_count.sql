SELECT p.Name, pt.PlaylistId, COUNT(pt.TrackId)
FROM Playlist p, PlaylistTrack pt
WHERE pt.PlaylistId = p.PlaylistId
GROUP BY pt.PlaylistId;
