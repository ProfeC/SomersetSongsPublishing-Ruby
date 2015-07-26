# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Album.where(
  :artist_id => Artist.find_by(name: 'Foreigner').id,
  # :description => '',
  # :original_release_date => '',
  :title => 'Double Vision'
).first_or_create

songs_list = [
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '00:03:12',
    mood: '',
    date: '1980-10-10',
    theme: '',
    title: 'Blue Morning, Blue Day'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    # date: '',
    theme: '',
    title: 'Back Where You Belong'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    # date: '',
    theme: '',
    title: 'Double Vision'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    # date: '',
    theme: '',
    title: 'Hot Blooded'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    # date: '',
    theme: '',
    title: 'I Have Waited So Long'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    # date: '',
    theme: '',
    title: 'Lonely Children'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    # date: '',
    theme: '',
    title: 'Love has Taken its Toll'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    # date: '',
    theme: '',
    title: 'Spellbinder'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    # date: '',
    theme: '',
    title: 'Tramontane (Instrumental)'
  },
  {
    audio: '',
    cover_art: '',
    genre: '',
    length: '',
    mood: '',
    # date: '',
    theme: '',
    title: 'You\'re All I Am'
  }
]

songs_list.each do |song|

  s = Song.where(
    :album_id => a.id,
    # :audio => song[:audio],
    # :cover_art => song[:conver_art],
    :description => song[:description],
    :length => song[:length],
    :original_release_date => song[:date],
    :title => song[:title]
  ).first_or_create

  if song[:genre].present?
    song[:genre].each do |g|
      s.genres << Genre.find_by(title: g)
    end
  end

  if song[:mood].present?
    song[:mood].each do |m|
      s.moods << Mood.find_by(title: m)
    end
  end

  if song[:theme].present?
    song[:theme].each do |t|
      s.themes << Theme.find_by(title: t)
    end
  end

end
