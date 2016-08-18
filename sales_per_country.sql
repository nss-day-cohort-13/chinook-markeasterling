SELECT i.BillingCountry, COUNT(i.InvoiceId) as NumberOfSales
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY NumberOfSales DESC;
