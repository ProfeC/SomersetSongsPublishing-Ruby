# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

album = Album.create!(
  artist_id: Artist.find_by(name: 'Foreigner').id,
  description: '',
  original_release_date: '1977-01-01',
  title: 'Foreigner'
)

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: ['rock'],
    length: '00:04:18',
    mood: ['anxiety', 'angst'],
    date: '1977-02-18',
    description: '',
    theme: [],
    title: 'At War with the World'
  },
  {
    audio: '',
    cover_art: '',
    genre: ['rock'],
    length: '00:03:19',
    mood: ['uptempo', 'driving', 'dynamic'],
    date: '1977-02-18',
    description: '',
    theme: ['temperature', 'frozen'],
    title: 'Cold As Ice'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:49',
    mood: [],
    date: '1977-02-18',
    description: '',
    theme: ['feel'],
    title: 'Feels Like The First Time'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:18',
    mood: [],
    date: '1977-02-18',
    description: '',
    theme: ['miss you'],
    title: 'Fool For You Anyway'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:05:09',
    mood: [],
    date: '1977-02-18',
    description: '',
    theme: ['need','want'],
    title: 'I Need You'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:05:09',
    mood: ['driving'],
    date: '1977-02-18',
    description: 'Long, Long Way From Home',
    theme: ['home'],
    title: 'Long, Long Way from Home'
  },
  {
    audio: '',
    cover_art: '',
    genre: ['rock'],
    length: '00:04:01',
    mood: [],
    date: '1977-02-18',
    description: '',
    theme: ['stars','moon'],
    title: 'Starrider'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:49',
    mood: [],
    date: '1977-02-28',
    description: '',
    theme: ['woman', 'women'],
    title: 'Woman Oh Woman'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:15',
    mood: [],
    date: '1977-12-18',
    description: '',
    theme: ['late'],
    title: 'The Damage is Done'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:02:58',
    mood: [],
    date: '1979-02-18',
    description: '',
    theme: [],
    title: 'Headknocker'
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
