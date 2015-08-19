# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

album = Album.create_with(
  artist_id: Artist.find_by(name: 'Strange Fruit').id,
  description: '',
  original_release_date: '1998-10-09').find_or_create_by!(title: 'Still Crazy')

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:39',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'All Over The World'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:46',
    mood: [],
    date: '',
    description: 'w/ Jimmy Nail',
    theme: [],
    title: 'Bird On A Wire'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:15',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Scream Freedom'
  },
  {
    audio: '',
    cover_art: '',
    genre: ['ballad'],
    length: '00:07:54',
    mood: [],
    date: '',
    description: 'w/ Jimmy Nail',
    theme: [],
    title: 'The Flame Still Burns Flame'
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
