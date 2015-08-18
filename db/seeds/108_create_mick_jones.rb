# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

album = Album.create_with(
  artist_id: Artist.find_by(name: 'Mick Jones').id,
  description: '',
  original_release_date: '').find_or_create_by!(title: 'Mick Jones')

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '00:04:34',
    mood: '',
    date: '1989-10-04',
    theme: '',
    title: 'Danielle'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '00:01:43',
    mood: '',
    date: '1989-10-04',
    theme: '',
    title: 'Johnny (Part 1)'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '00:03:30',
    mood: '',
    date: '1989-10-04',
    theme: '',
    title: 'Just Wanna Hold'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '00:03:50',
    mood: '',
    date: '1989-10-04',
    theme: '',
    title: 'Save Me Tonight'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '00:03:25',
    mood: '',
    date: '1989-10-04',
    theme: '',
    title: 'That\'s The Way My Love Is'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '00:04:25',
    mood: '',
    date: '1989-10-04',
    theme: '',
    title: 'Write Tonight'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '00:05:14',
    mood: '',
    date: '1989-10-04',
    theme: '',
    title: 'The Wrong Side Of The Law'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '00:05:39',
    mood: '',
    date: '1989-10-04',
    theme: '',
    title: 'You Are My Friend'
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
