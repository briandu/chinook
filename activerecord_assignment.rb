### Active Record Query Interface Assignment

### Provide one or more Active Record queries that retrieve the requested data
### below each of the following questions:


# 1a) Find the genre with the name "Hip Hop/Rap".

# Genre.where(name: 'Hip Hop/Rap')
# [#<Genre id: 17, name: "Hip Hop/
# Rap", created_at: "2013-01-20 02:04:31", updated_at: "2014-0
# 1-29 22:14:08">]>


# 1b) Count how many tracks belong to the "Hip Hop/Rap" genre

# Track.where(genre_id: 17).count
#    (1.5ms)  SELECT COUNT(*) FROM "tracks" WHERE "tracks"."ge
# nre_id" = $1  [["genre_id", 17]]
# => 35


# 2) Find the total amount of time required to listen to all the tracks in the database.



# 3a) Find the highest price of any track that has the media type "MPEG audio file".



# 3b) Find the name of the most expensive track that has the media type "MPEG audio file".



# 4) Find the 2 oldest artists.



### Stretch Exercise (Active Record Query Interface)


# 1) Find all the albums whose titles start with B.
