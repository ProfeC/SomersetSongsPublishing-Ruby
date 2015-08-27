# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

album = Album.create_with(
  artist_id: Artist.find_by(name: 'Foreigner').id,
  description: '',
  original_release_date: '1991-09-16').find_or_create_by!(title: 'Unusual Heat')

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:17',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Flesh Wound'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:06:02',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'I\'ll Fight For You'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:21',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Lowdown And Dirty'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:25',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Moment Of Truth'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:37',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Mountain Of Love'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:55',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'No Hiding Place'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:47',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Only Heaven Knows'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:05:02',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Ready For The Rain'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:32',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Safe In My Heart'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:32',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Unusual Heat'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:43',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'When The Night Comes Down'
  }
]

songs_list.each do |song|

  # Check for a specific release date. If there isn't one, then use the albums
  if song[:date].present?
    date = song[:date]
  else
    date = album.original_release_date
  end

  s = Song.create(
    title: song[:title],
    album_id: album.id,
    audio: song[:audio],
    cover_art: song[:conver_art],
    description: song[:description],
    length: song[:length],
    original_release_date: date
  )

  if song[:genre].present?
    song[:genre].each do |g|
      genre = Genre.find_or_create_by(title: g)
      s.genres << genre
    end
  end

  if song[:mood].present?
    song[:mood].each do |m|
      mood = Mood.find_or_create_by(title: m)
      s.moods << mood
    end
  end

  if song[:theme].present?
    song[:theme].each do |t|
      theme = Theme.find_or_create_by(title: t)
      s.themes << theme
    end
  end

end
