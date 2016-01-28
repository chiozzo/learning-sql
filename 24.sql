-- Provide a query that shows the most purchased track of 2013.

SELECT
	count(a.InvoiceLineId) as 'CountOfSales',
	a.TrackId,
	b.Name as 'TrackName'
FROM InvoiceLine as a
LEFT JOIN Track as b ON a.TrackId = b.TrackId
LEFT JOIN Invoice as c ON a.InvoiceId = c.InvoiceId
WHERE
	strftime('%Y', c.InvoiceDate) = '2013'
GROUP BY
	b.Name
ORDER BY
	count(a.InvoiceLineId) DESC
LIMIT 1