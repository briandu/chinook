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

# Track.sum(:milliseconds)
#    (4.6ms)  SELECT SUM("tracks"."milliseconds") FROM "tracks
# "
# => 1378575827 milliseconds

# 3a) Find the highest price of any track that has the media type "MPEG audio file".

# MediaType.where(name: 'MPEG audio file')
#   MediaType Load (0.5ms)  SELECT "media_types".* FROM "media
# _types" WHERE "media_types"."name" = $1  [["name", "MPEG aud
# io file"]]
# => #<ActiveRecord::Relation [#<MediaType id: 1, name: "MPEG
# audio file", created_at: "2006-11-24 08:21:33", updated_at:
#


# 3b) Find the name of the most expensive track that has the media type "MPEG audio file".

# Track.where(media_type_id: 1).maximum(:unit
# _price)
#    (3.0ms)  SELECT MAX("tracks"."unit_price") FROM "tracks"
# WHERE "tracks"."media_type_id" = $1  [["media_type_id", 1]]
# => #<BigDecimal:7fcb49249110,'0.99E0',9(18)>


# 4) Find the 2 oldest artists.



### Stretch Exercise (Active Record Query Interface)


# 1) Find all the albums whose titles start with B.
