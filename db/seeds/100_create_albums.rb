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
    title: 'Eye II Eye',
    artist_id: Artist.find_by(name: 'Scorpions, The').id
  },
  {
    title: 'Mick Jones',
    artist_id: Artist.find_by(name: 'Mick Jones').id
  },
  {
    title: 'Agent Provocateur',
    artist_id: Artist.find_by(name: 'Scorpions, The').id,
    original_release_date: '1984-11-05',
    description: 'Agent Provocateur is the fifth studio album by American/British rock band Foreigner, released on November 5, 1984. The album was the band\'s first and only number one album in the UK, and it reached the top 5 in the U.S. Although album sales were lower than their previous work in the U.S., it contains the band\'s biggest hit single, \"I Want to Know What Love Is\", which is their only #1 single in the UK and the U.S., staying at the top spot for three and two weeks respectively. The follow-up single, \"That Was Yesterday\", also proved to be a sizeable hit, peaking at #12 in the U.S. The album was certified Platinum in the UK by the BPI, and triple Platinum in the U.S. by the RIAA.[2]

[ https://en.wikipedia.org/wiki/Agent_Provocateur_(album) ]'
  },
  {
    title: 'Double Vision',
    artist_id: Artist.find_by(name: 'Foreigner').id
  }
])
