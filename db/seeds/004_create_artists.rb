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
  {
    name: '99 Posse',
    description: ''
  },
  {
    name: 'Tina Arena',
    description: ''
  },
  {
    name: 'Bad Company',
    description: ''
  },
  {
    name: 'Memphis Bleek (Explicit)',
    description: ''
  },
  {
    name: 'Cheap Trick',
    description: ''
  },
  {
    name: 'Cherie',
    description: ''
  },
  {
    name: 'Eric Clapton',
    description: ''
  },
  {
    name: 'The Cult',
    description: ''
  },
  {
    name: 'EPMD',
    description: ''
  },
  {
    name: 'Foreigner',
    description: ''
  },
  {
    name: 'Heart',
    description: ''
  },
  {
    name: 'Mick Jones',
    description: ''
  },
  {
    name: 'M.O.P.',
    description: ''
  },
  {
    name: 'Ozzy Osbourne',
    description: ''
  },
  {
    name: 'The Scorpions',
    description: ''
  },
  {
    name: 'Duncan Sheik',
    description: ''
  },
  {
    name: 'Strange Fruit',
    description: ''
  },
  {
    name: 'Strange Fruit w/ Jimmy Nail',
    description: ''
  },
  {
    name: 'Armand Van Helden',
    description:  ''
  }
]

artist_list.each do |artist|
  Artist.where(
    :name => artist[:name],
    :description => artist[:description]
  ).first_or_create
end
