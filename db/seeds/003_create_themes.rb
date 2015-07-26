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
    title: 'alive/life/live',
    description: ''
  },
  {
    title: 'alone/lonely',
    description: ''
  },
  {
    title: 'beautiful/pretty',
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
    title: 'hand/hands',
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
    title: 'hope/wish',
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
    title: 'man/men',
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
    title: 'need/want',
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
    title: 'run/running',
    description: ''
  },
  {
    title: 'stars/moon',
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
    title: 'winning/achievement',
    description: ''
  },
  {
    title: 'woman/women',
    description: ''
  },
  {
    title: 'world',
    description: ''
  }
]

theme_list.each do |theme|
  Theme.where(
    :title => theme[:title],
    :description => theme[:description]
  ).first_or_create
end
