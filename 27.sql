-- Provide a query that shows the most purchased Media Type.

SELECT
	count(a.TrackId) as countOfTrackSales,
	c.Name as MediaType
FROM InvoiceLine as a
LEFT JOIN Track as b ON a.TrackId = b.TrackId
LEFT JOIN MediaType as c ON b.MediaTypeId = c.MediaTypeId
GROUP BY
	c.Name
ORDER BY
	count(a.TrackId) DESC
LIMIT 1