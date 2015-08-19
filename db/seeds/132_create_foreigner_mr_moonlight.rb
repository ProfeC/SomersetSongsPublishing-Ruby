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
  original_release_date: '1995-04-05').find_or_create_by!(title: 'Mr. Moonlight')

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:44',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'All I Need To Know'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:46',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Big Dog'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:58',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Hand On My Heart'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:05:08',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Hole In My Soul'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:05:15',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'I Keep Hoping'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:34',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Rain'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:06:19',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Real World'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:05:09',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Running The Risk'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:54',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Under The Gun'
  },
  {
    audio: '',
    cover_art: '',
    genre: ['ballad'],
    length: '00:04:51',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'Until The End Of Time'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:16',
    mood: [],
    date: '',
    description: '',
    theme: [],
    title: 'White Lie'
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
