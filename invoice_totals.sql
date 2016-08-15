SELECT c.FirstName || " " || c.LastName as CustomerName,
       e.FirstName || " " || e.LastName as AgentName,
       i.Total
FROM Customer c, Employee e, Invoice i
WHERE e.title = 'Sales Support Agent'
AND c.CustomerId = i.CustomerId
AND c.SupportRepId = e.EmployeeId;
