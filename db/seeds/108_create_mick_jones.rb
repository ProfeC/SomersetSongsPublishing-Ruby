# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Album.where(
  :artist_id => Artist.find_by(name: 'Mick Jones').id,
  # :description => '',
  # :original_release_date => '',
  :title => 'Mick Jones'
).first_or_create

songs_list = [
  {
    album: a.title,
    # audio: '',
    # cover_art: '',
    genre: '',
    length: '00:04:35',
    mood: '',
    date: '1989-10-04',
    theme: ['risk'],
    title: '4 Wheels Turnin\''
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
