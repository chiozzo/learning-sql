-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT
	count(a.TrackId) as countOfTrackSales,
	b.Name as TrackName
FROM InvoiceLine as a
LEFT JOIN Track as b ON a.TrackId = b.TrackId
GROUP BY
	a.TrackId
ORDER BY
	count(a.TrackId) DESC
LIMIT 5 -- Doesn't work as intended. All tracks sold only once or twice.