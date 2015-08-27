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
  original_release_date: '1987-12-17').find_or_create_by!(title: 'Inside Information')

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:07',
    mood: [],
    # date: '',
    description: 'a.k.a.: A Night To Remember',
    theme: [],
    title: 'Night To Remember'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:05:10',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'The The Beat Of My Heart'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:27',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Can\'t Wait'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:11',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Counting Every Minute'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:03:53',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Face To Face'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:29',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Heart Turns To Stone'
  },
  {
    audio: '',
    cover_art: '',
    genre: ['ballad'],
    length: '00:04:52',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'I Don\'t Want To Live Without You'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:09',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Inside Information'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:42',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Out Of The Blue'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:12',
    mood: [],
    # date: '',
    description: '',
    theme: [],
    title: 'Say You Will'
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
