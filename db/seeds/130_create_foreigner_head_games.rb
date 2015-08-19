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
  original_release_date: '1979-09-25').find_or_create_by!(title: 'Head Games')

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:54',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Blinded By Science'
  },
  {
    audio: '',
    cover_art: '',
    genre: ['rock'],
    length: '00:03:37',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Dirty White Boy'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:58',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Do What You Like'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:37',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Head Games'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:40',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'I\'ll Get Even With You'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:18',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Love On The Telephone'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:26',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Modern Day, The The Modern Day'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:35',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Rev On The Red Line'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:43',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Seventeen'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:26',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'The Modern Day  Modern Day'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:25',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Women'
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
