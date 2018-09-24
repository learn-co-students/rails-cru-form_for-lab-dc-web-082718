# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.destroy_all
Song.destroy_all
Genre.destroy_all

artist1 = Artist.create(name: "Bon Jovi", bio: "I'm from New Jersey")
artist2 = Artist.create(name: "Neil Diamond", bio: "I sing love songs")

genre1 = Genre.create(name: "rock")
genre2 = Genre.create(name: "softer rock")

song1 = Song.create(name: "Livin' on a prayer", artist_id: artist1.id, genre_id: genre1.id )
song2 = Song.create(name: "Love baby, it hurts", artist_id: artist2.id, genre_id: genre2.id )
