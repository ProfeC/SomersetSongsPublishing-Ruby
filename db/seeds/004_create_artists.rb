# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some artists
artist_list = [
  [ '99 Posse', '' ], #1
  [ 'Tina Arena', '' ], #2
  [ 'Bad Company', '' ], #3
  [ 'Memphis Bleek (Explicit)', '' ], #4
  [ 'Cheap Trick', '' ], #5
  [ 'Cherie', '' ], #6
  [ 'Eric Clapton', '' ], #7
  [ 'Cult, The', '' ], #8
  [ 'EPMD', '' ], #9
  [ 'Foreigner', '' ], #10
  [ 'Heart', '' ], #11
  [ 'Mick Jones', '' ], #12
  [ 'M.O.P.', '' ], #13
  [ 'Ozzy Osbourne', '' ], #14
  [ 'Scorpions, The', '' ], #15
  [ 'Duncan Sheik', '' ], #16
  [ 'Strange Fruit', '' ], #17
  [ 'Strange Fruit w/ Jimmy Nail', '' ], #18
  [ 'Armand Van Helden', '' ] #19
]

artist_list.each do |artist|
  Artist.create( :name => artist[0], :description => artist[1] )
end
