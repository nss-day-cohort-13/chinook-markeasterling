SELECT  t.Name, COUNT(il.InvoiceLineId) as TimesBought
FROM Invoice i
INNER JOIN InvoiceLine il
ON i.InvoiceId = il.invoiceId
INNER JOIN Track t
ON il.TrackId = t.TrackId
WHERE STRFTIME('%Y', i.InvoiceDate) = '2013'
GROUP BY t.Name
ORDER BY TimesBought DESC;
