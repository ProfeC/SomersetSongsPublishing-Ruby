# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some albums
album_list = [
  {
    title: 'Can\'t Slow Down',
    artist: 'Foreigner'
  },
  {
    title: 'Cherie',
    artist: 'Cherie'
  },
  {
    title: 'Daylight',
    artist: 'Duncan Sheik'
  },
  {
    title: 'Double Vision',
    artist: 'Foreigner'
  },
  {
    title: 'Down To Earth',
    artist: 'Ozzy Osbourne'
  },
  {
    title: 'Eye II Eye',
    artist: 'The Scorpions'
  },
  {
    title: 'Fame And Fortune',
    artist: 'Bad Company'
  },
  {
    title: 'Feels Like The First Time',
    artist: 'Foreigner'
  },
  {
    title: 'Foreigner',
    artist: 'Foreigner'
  },
  {
    title: 'Foreigner (Expanded)',
    artist: 'Foreigner'
  },
  {
    title: 'Gandhi Khan',
    artist: 'Armand Van Helden'
  },
  {
    title: 'Head Games',
    artist: 'Foreigner'
  },
  {
    title: 'Head Games (Expanded)',
    artist: 'Foreigner'
  },
  {
    title: 'Hot Blooded (No Limits)',
    artist: 'Foreigner'
  },
  {
    title: 'In Deep',
    artist: 'Tina Arena'
  },
  {
    title: 'Inside Information',
    artist: 'Foreigner'
  },
  {
    title: 'Journeyman',
    artist: 'Eric Clapton'
  },
  {
    title: 'La Vida Que Vendrá',
    artist: '99 Posse'
  },
  {
    title: 'Mick Jones',
    artist: 'Mick Jones'
  },
  {
    title: 'Mr. Moonlight',
    artist: 'Foreigner'
  },
  {
    title: 'No End In Sight: The Very Best Of Foreigner',
    artist: 'Foreigner'
  },
  {
    title: 'Still Crazy',
    artist: 'Strange Fruit'
  },
  {
    title: 'The Understanding',
    artist: 'Memphis Bleek (Explicit)'
  },
  {
    title: 'Unusual Heat',
    artist: 'Foreigner'
  },
  {
    title: 'The Very Best And Beyond',
    artist: 'Foreigner'
  },
  {
    title: 'Warriorz',
    artist: 'M.O.P.'
  },
  {
    title: 'White Magic (Soundtrack)',
    artist: 'Foreigner'
  },
  {
    title: 'Will You Be There (In The Morning)',
    artist: 'Heart'
  }
]

album_list.each do |album|

  a = Album.create(
    :artist_id => Artist.find_by(name: album[:artist]).id,
    :description => album[:description],
    :original_release_date => album[:date],
    :title => album[:title]
  )
end
