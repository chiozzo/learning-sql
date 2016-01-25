-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT
	count(a.TrackId) as countOfTracks,
	b.Name as PlaylistName
FROM PlaylistTrack as a
LEFT JOIN Playlist as b ON a.PlaylistId = b.PlaylistId
GROUP BY
	a.PlaylistId