SELECT DISTINCT e.FirstName, e.LastName,  i.InvoiceId
FROM Invoice i, Employee e, Customer c
WHERE e.Title = 'Sales Support Agent'
AND e.EmployeeId = c.SupportRepId
AND c.CustomerId = i.CustomerId;
