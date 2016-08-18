SELECT e.EmployeeId, e.FirstName|| " " || e.LastName as 'Full Name', COUNT(i.InvoiceId) as InvoicesIn2009
FROM Employee e
INNER JOIN Customer c
ON e.EmployeeId = c.SupportRepId
INNER JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE STRFTIME('%Y', i.InvoiceDate) = '2009'
GROUP BY e.EmployeeId
ORDER BY InvoicesIn2009 DESC LIMIT 1
