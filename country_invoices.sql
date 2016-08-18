SELECT  i.BillingCountry, COUNT(i.invoiceId)
FROM Invoice i
GROUP BY i.BillingCountry;
