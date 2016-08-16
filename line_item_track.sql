SELECT i.InvoiceLineId, t.name
FROM InvoiceLine i, Track t
WHERE t.TrackId = i.TrackId
ORDER BY i.invoiceLineId ASC;
