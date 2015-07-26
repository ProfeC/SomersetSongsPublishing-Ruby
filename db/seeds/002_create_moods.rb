# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some moods
mood_list = [
  {
    title: 'aggressive/angry',
    description: ''
  },
  {
    title:  'ambient',
    description: ''
  },
  {
    title:  'building',
    description: ''
  },
  {
    title:  'despair',
    description: ''
  },
  {
    title:  'dramatic',
    description: ''
  },
  {
    title:  'dreamy/ethereal',
    description: ''
  },
  {
    title:  'driving',
    description: ''
  },
  {
    title:  'dynamic',
    description: ''
  },
  {
    title:  'elegant/sophisticated',
    description: ''
  },
  {
    title:  'emotional',
    description: ''
  },
  {
    title:  'exciting/energetic',
    description: ''
  },
  {
    title:  'futuristic',
    description: ''
  },
  {
    title:  'happy',
    description: ''
  },
  {
    title:  'light',
    description: ''
  },
  {
    title:  'magical',
    description: ''
  },
  {
    title:  'majestic/grand',
    description: ''
  },
  {
    title:  'mellow/gentle',
    description: ''
  },
  {
    title:  'moody/blue',
    description: ''
  },
  {
    title:  'passionate',
    description: ''
  },
  {
    title:  'reflective',
    description: ''
  },
  {
    title:  'sad/melancholy',
    description: ''
  },
  {
    title:  'sentimental',
    description: ''
  },
  {
    title:  'spiritual',
    description: ''
  },
  {
    title:  'sweeping',
    description: ''
  },
  {
    title:  'triumphant',
    description: ''
  },
  {
    title:  'uplifting',
    description:  ''
  }
]

mood_list.each do |mood|
  Mood.where(
    :title => mood[:title],
    :description => mood[:description]
  ).first_or_create
end
