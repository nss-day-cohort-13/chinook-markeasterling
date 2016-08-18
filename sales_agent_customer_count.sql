SELECT e.EmployeeId, COUNT(c.CustomerId)
FROM Employee e
LEFT JOIN Customer c
ON e.EmployeeId = c.SupportRepId
WHERE e.Title = 'Sales Support Agent'
Group by e.EmployeeId;
