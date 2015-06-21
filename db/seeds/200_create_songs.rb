# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some songs
songs = Song.create ([
  {
    album_id: Album.find_by(title: 'Eye II Eye').id,
    audio: File.open('/Users/Lee/Google Drive/Media/sisterNancy-bambam.mp3'),
    cover_art: File.open('/Users/Lee/Google Drive/Media/Screen-Shot-2013-08-14-5.20.31-PM.png'),
    length: '00:03:52',
    original_release_date: '1999-11-22',
    title: '10 Light Years Away'
  },
  {
    album_id: Album.find_by(title: 'Mick Jones').id,
    audio: File.open('/Users/Lee/Google Drive/Media/imperial_march.mp3'),
    cover_art: '',
    length: '00:04:35',
    original_release_date: '1989-10-4',
    title: '4 Wheels Turnin\''
  },
  {
    album_id: Album.find_by(title: 'Agent Provocateur').id,
    audio: '',
    cover_art: '',
    length: '00:04:12',
    original_release_date: '1984-12-19',
    title: 'A Love In Vain'
  },
  {
    album_id: Album.find_by(title: 'Double Vision').id,
    audio: '',
    cover_art: '',
    length: '00:03:12',
    original_release_date: '1980-10-10',
    title: 'Blue Morning, Blue Day'
  }
])
