SELECT STRFTIME('%Y', i.InvoiceDate) AS InvoiceYear, SUM(i.Total) AS Total
FROM Invoice i
WHERE InvoiceYear = '2011' OR InvoiceYear = '2009'
GROUP BY InvoiceYear;
