# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some songs

# songs = Song.create ([
#   {
#     album_id: Album.find_by(title: 'Eye II Eye').id,
#     #audio: File.open('/Users/Lee/Google Drive/Media/sisterNancy-bambam.mp3'),
#     #cover_art: File.open('/Users/Lee/Google Drive/Media/Screen-Shot-2013-08-14-5.20.31-PM.png'),
#     genre: Genre.find_by(title: 'Rock'),
#     length: '00:03:52',
#     mood: Mood.find_by(title: 'Futuristic'),
#     original_release_date: '1999-11-22',
#     theme: Theme.find_by(title: 'Risk'),
#     title: '10 Light Years Away'
#   },
#   {
#     album_id: Album.find_by(title: 'Mick Jones').id,
#     audio: File.open('/Users/Lee/Google Drive/Media/imperial_march.mp3'),
#     cover_art: '',
#     length: '00:04:35',
#     original_release_date: '1989-10-4',
#     title: '4 Wheels Turnin\''
#   },
#   {
#     album_id: Album.find_by(title: 'Agent Provocateur').id,
#     audio: '',
#     cover_art: '',
#     length: '00:04:12',
#     original_release_date: '1984-12-19',
#     title: 'A Love In Vain'
#   },
#   {
#     album_id: Album.find_by(title: 'Double Vision').id,
#     audio: '',
#     cover_art: '',
#     length: '00:03:12',
#     original_release_date: '1980-10-10',
#     title: 'Blue Morning, Blue Day'
#   }
# ])

songs_list = [
  {
    album: 'Eye II Eye',
    #audio: File.open('/Users/Lee/Google Drive/Media/sisterNancy-bambam.mp3'),
    #cover_art: File.open('/Users/Lee/Google Drive/Media/Screen-Shot-2013-08-14-5.20.31-PM.png'),
    genre: ['Rock', 'Ballad'],
    length: '00:03:52',
    mood: ['Futuristic'],
    date: '1999-11-22',
    theme: ['Risk'],
    title: '10 Light Years Away'
  },
  {
    album: 'Mick Jones',
    # album_id: Album.find_by(title: 'Mick Jones').id,
    # audio: File.open('/Users/Lee/Google Drive/Media/imperial_march.mp3'),
    # cover_art: '',
    length: '00:04:35',
    # mood: '',
    date: '1989-10-4',
    # theme: '',
    title: '4 Wheels Turnin\''
  },
  {
    album: 'Agent Provocateur',
    # album_id: Album.find_by(title: 'Agent Provocateur').id,
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:04:12',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'A Love In Vain'
  },
  {
    album: 'Double Vision',
    # album_id: Album.find_by(title: 'Double Vision').id,
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:03:12',
    # mood: '',
    date: '1980-10-10',
    # theme: '',
    title: 'Blue Morning, Blue Day'
  }
]

songs_list.each do |song|

  s = Song.create(
    :album_id => Album.find_by(title: song[:album]).id,
    # :audio => song[:audio],
    # :cover_art => song[:conver_art],
    :description => song[:description],
    :length => song[:length],
    :original_release_date => song[:date],
    :title => song[:title]
  )

  if song[:genre]
    song[:genre].each do |g|
      s.genres << Genre.find_by(title: g)
    end
  end

  if song[:mood]
    song[:mood].each do |m|
      s.moods << Mood.find_by(title: m)
    end
  end

  if song[:them]
    song[:them].each do |t|
      s.themes << Theme.find_by(title: t)
    end
  end

end
