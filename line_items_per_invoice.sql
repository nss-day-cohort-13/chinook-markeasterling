SELECT i.invoiceId, COUNT(i.InvoiceLineId) as NumberOfLines
FROM InvoiceLine i
GROUP BY i.InvoiceId
