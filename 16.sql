-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.

SELECT
	a.Name as TrackName,
	b.Title as AlbumName,
	c.Name as MediaType,
	d.Name as Genre
FROM Track as a
LEFT JOIN Album as b ON a.AlbumId = b.AlbumId
LEFT JOIN MediaType as c ON a.MediaTypeId = c.MediaTypeId
LEFT JOIN Genre as d ON a.GenreId = d.GenreId