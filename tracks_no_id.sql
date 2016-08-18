SELECT t.Name as SongName,
       a.Title as AlbumTitle,
       g.Name as GenreName,
       m.name as MediaTypeName
FROM Track t
INNER JOIN Album a
ON t.AlbumId = a.AlbumId
INNER JOIN  MediaType m
ON t.MediaTypeId = m.MediaTypeId
INNER JOIN Genre g
ON t.GenreId = g.GenreId;
