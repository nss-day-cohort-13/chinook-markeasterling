SELECT i.InvoiceLineId, t.name as TrackName,  art.Name as ArtistName
FROM InvoiceLine i, Track t, Album alb, Artist art
WHERE t.TrackId = i.TrackId
AND t.AlbumId = alb.AlbumId
AND alb.ArtistId = art.ArtistId
ORDER BY i.InvoiceLineId ASC;
