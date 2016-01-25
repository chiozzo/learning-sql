-- Provide a query that includes the track name with each invoice line item.

SELECT
	b.Name as TrackName,
	a.*
FROM InvoiceLine as a
LEFT JOIN Track as b ON a.TrackId = b.TrackId