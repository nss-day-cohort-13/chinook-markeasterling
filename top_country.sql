SELECT c.Country, SUM(i.Total) as TotalSales
FROM Customer c
INNER JOIN Invoice i
ON c.CustomerId = i.InvoiceId
GROUP BY c.Country
ORDER BY TotalSales DESC;
