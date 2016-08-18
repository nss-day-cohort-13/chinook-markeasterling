SELECT  m.Name, COUNT(il.InvoiceLineId) as TimesBought
FROM Invoice i
INNER JOIN InvoiceLine il
ON i.InvoiceId = il.invoiceId
INNER JOIN Track t
ON il.TrackId = t.TrackId
INNER JOIN MediaType m
ON t.MediaTypeId = m.MediaTypeId
GROUP BY m.Name
ORDER BY TimesBought DESC LIMIT 1;
