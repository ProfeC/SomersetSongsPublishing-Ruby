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
  original_release_date: '1993-05-04').find_or_create_by!(title: 'The Very Best And Beyond')

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:05:15',
    mood: [],
    date: '1992-12-17',
    description: '',
    theme: [],
    title: 'With Heaven On Our Side'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:05:15',
    mood: [],
    date: '1993-05-03',
    description: '',
    theme: [],
    title: 'Prisoner Of Love'
  },
  {
    audio: '',
    cover_art: '',
    genre: [],
    length: '00:04:51',
    mood: [],
    date: '1993-05-04',
    description: '',
    theme: [],
    title: 'Soul Doctor'
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
