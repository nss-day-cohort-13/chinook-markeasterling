SELECT  ar.Name, COUNT(il.InvoiceLineId) as TimesBought
FROM Invoice i
INNER JOIN InvoiceLine il
ON i.InvoiceId = il.invoiceId
INNER JOIN Track t
ON il.TrackId = t.TrackId
INNER JOIN Album a
ON t.AlbumId = a.AlbumId
INNER JOIN  Artist ar
ON  a.ArtistId = ar.ArtistId
GROUP BY ar.Name
ORDER BY TimesBought DESC LIMIT 3

