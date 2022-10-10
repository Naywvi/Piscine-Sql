SELECT artists.Name FROM artists
INNER JOIN albums ON artists.ArtistId = albums.ArtistId
GROUP BY (artists.Name) 
HAVING count(albums.ArtistId) >= 4
ORDER BY artists.Name desc DESC