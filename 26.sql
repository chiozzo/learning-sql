-- Provide a query that shows the top 3 best selling artists.

SELECT
	count(a.TrackId) as countOfTrackSales,
	d.Name as ArtistName
FROM InvoiceLine as a
LEFT JOIN Track as b ON a.TrackId = b.TrackId
LEFT JOIN Album as c ON b.AlbumId = c.AlbumId
LEFT JOIN Artist as d ON c.ArtistId = d.ArtistId
GROUP BY
	c.ArtistId
ORDER BY
	count(a.TrackId) DESC
LIMIT 3