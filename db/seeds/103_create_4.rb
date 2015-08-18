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
  original_release_date: '1981-07-10',
  title: '4',
)

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    date: '1981-07-10',
    theme: '',
    title: 'Break It Up'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    date: '1981-07-10',
    theme: '',
    title: 'Don\'t Let Go'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    date: '1981-07-10',
    theme: ['stars','moon'],
    title: 'Girl on the Moon'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    date: '1981-07-10',
    theme: ['winning','achievement'],
    title: 'I\'m Gonna Win'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    date: '1981-07-10',
    theme: ['heroes'],
    title: 'Juke Box Hero'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    date: '1981-07-10',
    theme: '',
    title: 'Luanne'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    date: '1981-07-10',
    theme: ['night'],
    title: 'Night Life'
  },
  {
    audio: '',
    cover_art: '',
    genre: ['rock'],
    length: '',
    mood: '',
    date: '1981-07-10',
    theme: ['speed', 'fast'],
    title: 'Urgent'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    date: '1981-07-10',
    theme: ['waiting'],
    title: 'Waiting for a Girl Like You'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    date: '1981-07-10',
    theme: ['woman','women'],
    title: 'Woman in Black'
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
