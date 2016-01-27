-- Provide a query that shows the most purchased track of 2013.

SELECT
	count(a.InvoiceLineId) as 'CountOfSales',
	a.TrackId,
	b.Name as 'TrackName'
FROM InvoiceLine as a
LEFT JOIN Track as b ON a.TrackId = b.TrackId
GROUP BY
	b.Name
ORDER BY
	count(a.InvoiceLineId) DESC
LIMIT 1