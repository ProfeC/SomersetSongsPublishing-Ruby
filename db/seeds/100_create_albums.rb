# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some albums
albums = Album.create ([
  {
    title: 'Agent Provocateur',
    artist_id: Artist.find_by(name: 'Foreigner').id,
    original_release_date: '1984-11-05',
    description: 'Agent Provocateur is the fifth studio album by American/British rock band Foreigner, released on November 5, 1984. The album was the band\'s first and only number one album in the UK, and it reached the top 5 in the U.S. Although album sales were lower than their previous work in the U.S., it contains the band\'s biggest hit single, \"I Want to Know What Love Is\", which is their only #1 single in the UK and the U.S., staying at the top spot for three and two weeks respectively. The follow-up single, \"That Was Yesterday\", also proved to be a sizeable hit, peaking at #12 in the U.S. The album was certified Platinum in the UK by the BPI, and triple Platinum in the U.S. by the RIAA.[2]

[ https://en.wikipedia.org/wiki/Agent_Provocateur_(album) ]'
  },
  {
    title: '1984 Olympic Marathon Theme Song',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: '4',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Beyond Good and Evil',
    artist_id: Artist.find_by(name: 'Cult, The').id
  },
  {
    title: 'Business Never Personal',
    artist_id: Artist.find_by(name: 'EMPD').id
  },
  {
    title: 'Busted',
    artist_id: Artist.find_by(name: 'Cheap Trick').id
  },
  {
    title: 'Can\'t Slow Down',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Cherie',
    artist_id: Artist.find_by(name: 'Cherie').id
  },
  {
    title: 'Daylight',
    artist_id: Artist.find_by(name: 'Sheik, Duncan').id
  },
  {
    title: 'Double Vision',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Down To Earth',
    artist_id: Artist.find_by(name: 'Ozzy Osbourne').id
  },
  {
    title: 'Eye II Eye',
    artist_id: Artist.find_by(name: 'Scorpions, The').id
  },
  {
    title: 'Fame And Fortune',
    artist_id: Artist.find_by(name: 'Bad Company').id
  },
  {
    title: 'Feels Like The First Time',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Foreigner',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Foreigner (Expanded)',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Gandhi Khan',
    artist_id: Artist.find_by(name: 'Armand Van Helden').id
  },
  {
    title: 'Head Games',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Head Games (Expanded)',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Hot Blooded (No Limits)',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'In Deep',
    artist_id: Artist.find_by(name: 'Tina Arena').id
  },
  {
    title: 'Inside Information',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Journeyman',
    artist_id: Artist.find_by(name: 'Eric Clapton').id
  },
  {
    title: 'La Vida Que Vendrá',
    artist_id: Artist.find_by(name: '99 Posse').id
  },
  {
    title: 'Mick Jones',
    artist_id: Artist.find_by(name: 'Mick Jones').id
  },
  {
    title: 'Mr. Moonlight',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'No End In Sight: The Very Best Of Foreigner',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Still Crazy',
    artist_id: Artist.find_by(name: 'Strange Fruit').id
  },
  {
    title: 'The Understanding',
    artist_id: Artist.find_by(name: 'Memphis Bleek (Explicit)').id
  },
  {
    title: 'Unusual Heat',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'The Very Best And Beyond',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Warriorz',
    artist_id: Artist.find_by(name: 'M.O.P.').id
  },
  {
    title: 'White Magic (Soundtrack)',
    artist_id: Artist.find_by(name: 'Foreigner').id
  },
  {
    title: 'Will You Be There (In The Morning)',
    artist_id: Artist.find_by(name: 'Heart').id
  }
])
