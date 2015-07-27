# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some themes
theme_list = [
  {
    title: 'alive',
    description: ''
  },
  {
    title: 'life',
    description: ''
  },
  {
    title: 'live',
    description: ''
  },
  {
    title: 'alone',
    description: ''
  },
  {
    title: 'lonely',
    description: ''
  },
  {
    title: 'beautiful',
    description: ''
  },
  {
    title: 'fast',
    description: ''
  },
  {
    title: 'pretty',
    description: ''
  },
  {
    title: 'blue',
    description: ''
  },
  {
    title: 'children',
    description: ''
  },
  {
    title: 'dirty',
    description: ''
  },
  {
    title: 'dreams',
    description: ''
  },
  {
    title: 'eyes',
    description: ''
  },
  {
    title: 'feel',
    description: ''
  },
  {
    title: 'games',
    description: ''
  },
  {
    title: 'hand',
    description: ''
  },
  {
    title: 'hands',
    description: ''
  },
  {
    title: 'heart',
    description: ''
  },
  {
    title: 'heaven',
    description: ''
  },
  {
    title: 'heroes',
    description: ''
  },
  {
    title: 'home',
    description: ''
  },
  {
    title: 'hope',
    description: ''
  },
  {
    title: 'wish',
    description: ''
  },
  {
    title: 'late',
    description: ''
  },
  {
    title: 'lie',
    description: ''
  },
  {
    title: 'men',
    description: ''
  },
  {
    title: 'man',
    description: ''
  },
  {
    title: 'miss you',
    description: ''
  },
  {
    title: 'morning',
    description: ''
  },
  {
    title: 'need',
    description: ''
  },
  {
    title: 'want',
    description: ''
  },
  {
    title: 'night',
    description: ''
  },
  {
    title: 'rain',
    description: ''
  },
  {
    title: 'risk',
    description: ''
  },
  {
    title: 'running',
    description: ''
  },
  {
    title: 'run',
    description: ''
  },
  {
    title: 'stars',
    description: ''
  },
  {
    title: 'speed',
    description: ''
  },
  {
    title: 'moon',
    description: ''
  },
  {
    title: 'telephone',
    description: ''
  },
  {
    title: 'temperature',
    description: ''
  },
  {
    title: 'time',
    description: ''
  },
  {
    title: 'tonight',
    description: ''
  },
  {
    title: 'waiting',
    description: ''
  },
  {
    title: 'winning',
    description: ''
  },
  {
    title: 'achievement',
    description: ''
  },
  {
    title: 'woman',
    description: ''
  },
  {
    title: 'women',
    description: ''
  },
  {
    title: 'world',
    description: ''
  }
]

theme_list.each do |theme|
  Theme.find_or_create_by(title: theme[:title]) do |t|
    t.description = theme[:description]
  end
end
