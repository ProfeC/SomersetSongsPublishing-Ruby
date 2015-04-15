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
    title: 'Eye II Eye'
  },
  {
    title: 'Mick Jones'
  },
  {
    title: 'Agent Provocateur'
  }
])

# Seed some songs
songs = Song.create ([
  {
    title: '10 Light Years Away',
    original_release_date: '1999-11-22'
  },
  {
    title: '4 Wheels Turnin\'',
    original_release_date: '1989-10-4',
  },
  {
    title: 'A Love In Vain',
    original_release_date: '1984-12-19',
  }
])

