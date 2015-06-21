# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some albums
albums = Album.create ([
  {
    title: 'Eye II Eye',
    artist_id: Artist.find_by(name: 'Scorpions, The').id
  },
  {
    title: 'Mick Jones',
    artist_id: Artist.find_by(name: 'Mick Jones').id
  },
  {
    title: 'Agent Provocateur',
    artist_id: Artist.find_by(name: 'Scorpions, The').id
  },
  {
    title: 'Double Vision',
    artist_id: Artist.find_by(name: 'Foreigner').id
  }
])
