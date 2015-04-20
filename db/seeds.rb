# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some artists
artists = Artist.create ([
  {
    name: 'The Scorpions'
  },
  {
    name: 'Mick Jones'
  },
  {
    name: 'Foreigner'
  }
])

# Seed some albums
albums = Album.create ([
  {
    title: 'Eye II Eye',
    artist_id: 1
  },
  {
    title: 'Mick Jones',
    artist_id: 2
  },
  {
    title: 'Agent Provocateur',
    artist_id: 3
  },
  {
    title: 'Double Vision',
    artist_id: 3
  }
])

# Seed some songs
songs = Song.create ([
  {
    title: '10 Light Years Away',
    original_release_date: '1999-11-22',
    length: '3:52',
    artist_id: 1,
    album_id: 3
  },
  {
    title: '4 Wheels Turnin\'',
    original_release_date: '1989-10-4',
    length: '4:35',
    artist_id: 2,
    album_id: 3
  },
  {
    title: 'A Love In Vain',
    original_release_date: '1984-12-19',
    length: '4:12',
    artist_id: 3,
    album_id: 3
  },
  {
    title: 'Blue Morning, Blue Day',
    original_release_date: '1980-10-10',
    length: '3:12',
    genre: 'rock',
    theme: 'blue',
    tag: 'blue, bleu, rock, morning',
    artist_id: 3,
    album_id: 4
  }
])
