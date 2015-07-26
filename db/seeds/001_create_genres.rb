# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some genres
genre_list = [
  {
    title: 'ballad',
    description: ''
  },
  {
    title: 'instrumental',
    description: ''
  },
  {
    title: 'hip hop',
    description: ''
  },
  {
    title: 'rap',
    description: ''
  },
  {
    title: 'rock',
    description: ''
  }
]

genre_list.each do |genre|
  Genre.where(
    :title => genre[:title],
    :description => genre[:description]
  ).first_or_create
end
