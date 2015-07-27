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
    title: 'aggressive',
    description: ''
  },
  {
    title: 'angry',
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
    title:  'ethereal',
    description: ''
  },
  {
    title:  'dreamy',
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
    title:  'elegant',
    description: ''
  },
  {
    title:  'sophisticated',
    description: ''
  },
  {
    title:  'emotional',
    description: ''
  },
  {
    title:  'exciting',
    description: ''
  },
  {
    title:  'energetic',
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
    title:  'majestic',
    description: ''
  },
  {
    title:  'grand',
    description: ''
  },
  {
    title:  'mellow',
    description: ''
  },
  {
    title:  'gentle',
    description: ''
  },
  {
    title:  'moody',
    description: ''
  },
  {
    title:  'blue',
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
    title:  'sad',
    description: ''
  },
  {
    title:  'melancholy',
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
