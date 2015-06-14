# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some moods
moods = Mood.create([
  {
    title: 'Aggressive/Angry',
    description: ''
  },
  {
    title: 'Ambient',
    description: ''
  },
  {
    title: 'Building',
    description: ''
  },
  {
    title: 'Despair',
    description: ''
  },
  {
    title: 'Dramatic',
    description: ''
  },
  {
    title: 'Dreamy/Ethereal',
    description: ''
  }
])

# Seed some genres
genres = Genre.create ([
  {
    title: 'rock'
  },
  {
    title: 'blues'
  },
  {
    title: 'ballad'
  }
])

# Seed some themes
themes = Theme.create ([
  {
    title: 'Alive/Life/Live',
    description: ''
  },
  {
    title: 'Alone/Lonely',
    description: ''
  },
  {
    title: 'Beautiful/Pretty',
    description: ''
  },
  {
    title: 'Blue',
    description: ''
  },
  {
    title: 'Children',
    description: ''
  },
  {
    title: 'Dirty',
    description: ''
  }
])

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
    length: '00:03:52',
    album_id: 1
  },
  {
    title: '4 Wheels Turnin\'',
    original_release_date: '1989-10-4',
    length: '00:04:35',
    album_id: 2
  },
  {
    title: 'A Love In Vain',
    original_release_date: '1984-12-19',
    length: '00:04:12',
    album_id: 3
  },
  {
    title: 'Blue Morning, Blue Day',
    original_release_date: '1980-10-10',
    length: '00:03:12',
    album_id: 4
  }
])
