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
  original_release_date: '1978-01-01').find_or_create_by!(title: 'Double Vision')

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: ['rock'],
    length: '00:03:12',
    mood: [],
    date: '1980-10-10',
    theme: ['blue'],
    title: 'Blue Morning, Blue Day'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:15',
    mood: [],
    date: '1980-10-10',
    theme: ['home'],
    title: 'Back Where You Belong'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:44',
    mood: [],
    date: '1980-10-10',
    theme: ['eyes'],
    title: 'Double Vision'
  },
  {
    audio: '',
    cover_art: '',
    genre: ['rock'],
    length: '00:4:29',
    mood: [],
    date: '1980-10-10',
    theme: ['temperature'],
    title: 'Hot Blooded'
  },
  {
    audio: '',
    cover_art: '',
    genre: ['ballad'],
    length: '00:04:06',
    mood: ['ambient'],
    date: '1980-10-10',
    theme: ['waiting'],
    title: 'I Have Waited So Long'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:37',
    mood: [],
    date: '1980-10-10',
    theme: ['children'],
    title: 'Lonely Children'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:31',
    mood: [],
    date: '1980-10-10',
    theme: [],
    title: 'Love has Taken its Toll'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:49',
    mood: [],
    date: '1980-10-10',
    theme: ['magic'],
    title: 'Spellbinder'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:55',
    mood: ['triumphant'],
    date: '1980-10-10',
    theme: [],
    title: 'Tramontane (Instrumental)'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:24',
    mood: [],
    date: '1980-10-10',
    theme: [],
    title: 'You\'re All I Am'
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
