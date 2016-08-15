select CustomerId, LastName, FirstName, Country
from Customer c
where c.country != 'USA'
ORDER BY c.Country ASC;
