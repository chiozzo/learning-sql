-- Provide a query only showing the Customers from Brazil.

SELECT
	FirstName||' '||LastName as CustomerFullName,
	CustomerId,
	Country
FROM Customer
WHERE
	Country = 'Brazil'