select CustomerId, LastName, FirstName, Country
from Customer c
where c.country = 'Brazil'
ORDER BY c.Country ASC;
