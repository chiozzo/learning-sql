-- Provide a query showing the invoices of customers who are from Brazil.

SELECT
	a.*
FROM Invoice as a
LEFT JOIN Customer as b ON a.CustomerId = b.CustomerId
WHERE
	b.Country = 'Brazil'