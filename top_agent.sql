SELECT e.EmployeeId, e.FirstName|| " " || e.LastName as 'Full Name', COUNT(i.InvoiceId) as Invoices
FROM Employee e
INNER JOIN Customer c
ON e.EmployeeId = c.SupportRepId
INNER JOIN Invoice i
ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId
ORDER BY Invoices DESC LIMIT 1;
