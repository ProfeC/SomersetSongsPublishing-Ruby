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
    title: 'Agent Provocateur',
    artist: 'Foreigner',
    original_release_date: '1984-11-05',
    description: 'Agent Provocateur is the fifth studio album by American/British rock band Foreigner, released on November 5, 1984. The album was the band\'s first and only number one album in the UK, and it reached the top 5 in the U.S. Although album sales were lower than their previous work in the U.S., it contains the band\'s biggest hit single, \"I Want to Know What Love Is\", which is their only #1 single in the UK and the U.S., staying at the top spot for three and two weeks respectively. The follow-up single, \"That Was Yesterday\", also proved to be a sizeable hit, peaking at #12 in the U.S. The album was certified Platinum in the UK by the BPI, and triple Platinum in the U.S. by the RIAA.[2]

[ https://en.wikipedia.org/wiki/Agent_Provocateur_(album) ]'
  },
  {
    title: '1984 Olympic Marathon Theme Song',
    artist: 'Foreigner'
  },
  {
    title: '4',
    artist: 'Foreigner'
  },
  {
    title: 'Beyond Good and Evil',
    artist: 'The Cult'
  },
  {
    title: 'Business Never Personal',
    artist: 'EPMD'
  },
  {
    title: 'Busted',
    artist: 'Cheap Trick'
  },
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
