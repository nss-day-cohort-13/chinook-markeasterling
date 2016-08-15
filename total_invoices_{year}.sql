SELECT COUNT(i.InvoiceId), STRFTIME('%Y', i.InvoiceDate) AS InvoiceYear
FROM Invoice i
WHERE InvoiceYear = '2011' OR InvoiceYear = '2009'
GROUP BY InvoiceYear;
