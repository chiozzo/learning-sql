-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT
	b.Name as TrackName,
	a.*,
	c.*
FROM InvoiceLine as a
LEFT JOIN Track as b ON a.TrackId = b.TrackId
LEFT JOIN (SELECT
						b.Name as ArtistName,
						a.AlbumId,
						a.ArtistId
					FROM Album as a
					LEFT JOIN Artist as b ON a.ArtistId = b.ArtistId) as c ON b.AlbumId = c.AlbumId