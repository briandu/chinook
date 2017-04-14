-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.

SELECT * FROM artists WHERE name='Queen';
 id | name  |         created_at         |         updated_at
----+-------+----------------------------+----------------------------
 51 | Queen | 2006-01-08 22:57:01.166112 | 2014-01-29 22:10:22.166366
(1 row)

SELECT * FROM albums WHERE artist_id=51;
 id  | artist_id |       title       |         created_at         |         updated_at
-----+-----------+-------------------+----------------------------+----------------------------
  36 |        51 | Greatest Hits II  | 2008-01-30 14:00:12.455894 | 2014-01-29 22:14:02.456155
 185 |        51 | Greatest Hits I   | 2007-12-29 12:02:13.672295 | 2014-01-29 22:14:02.672569
 186 |        51 | News Of The World | 2010-06-23 20:50:06.971442 | 2014-01-29 22:14:02.971684
(3 rows)


-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

SELECT id FROM media_types WHERE name='Protected MPEG-4 video file';
 id
----
  3
(1 row)

SELECT COUNT(id) FROM tracks WHERE media_type_id=3;
 count
-------
   214
(1 row)

-- 3) Find the least expensive track that has the genre "Electronica/Dance".

SELECT id FROM genres WHERE name='Electronica/Dance';
 id
----
 15
(1 row)

SELECT name, genre_id FROM tracks WHERE genre_id=15 ORDER BY unit_price ASC LIMIT 1
name        | genre_id
--------------------+----------
Instinto Colectivo |       15
(1 row)


-- 4) Find the all the artists whose names start with A.

SELECT name FROM artists WHERE name LIKE 'A%';
                                         name
---------------------------------------------------------------------------------------
 Aerosmith
 Alice In Chains
 Antônio Carlos Jobim
 Apocalyptica
 Azymuth
 Aquaman
 AC/DC
 Alanis Morissette
 Audioslave
 Avril Lavigne
 Aisha Duo
 Aaron Goldberg
 Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
 Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
 Aaron Copland & London Symphony Orchestra
 Antal Doráti & London Symphony Orchestra
 Amy Winehouse
 Adrian Leaper & Doreen de Feis
 Accept
 Aerosmith & Sierra Leones Refugee Allstars
 Alberto Turco & Nova Schola Gregoriana
 Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker
 Academy of St. Martin in the Fields & Sir Neville Marriner
 Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett
 Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart
 A Cor Do Som
(26 rows)


-- 5) Find all the tracks that belong to playlist 1.

SELECT * FROM playlists LIMIT 1                                                                                                                                                       ;
 id | name  |         created_at         |         updated_at
----+-------+----------------------------+----------------------------
  1 | Music | 2005-01-17 17:01:12.368268 | 2014-01-29 22:14:33.368743

SELECT DISTINCT name, media_type_id FROM tracks WHERE media_type_id <> 3;
