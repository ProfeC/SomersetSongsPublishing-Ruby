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
  ['aggressive/angry', ''],
  [ 'ambient', ''],
  [ 'building', ''],
  [ 'despair', ''],
  [ 'dramatic', ''],
  [ 'dreamy/ethereal', ''],
  [ 'driving', ''],
  [ 'dynamic', ''],
  [ 'elegant/sophisticated', ''],
  [ 'emotional', ''],
  [ 'exciting/energetic', ''],
  [ 'futuristic', ''],
  [ 'happy', ''],
  [ 'light', ''],
  [ 'magical', ''],
  [ 'majestic/grand', ''],
  [ 'mellow/gentle', ''],
  [ 'moody/blue', ''],
  [ 'passionate', ''],
  [ 'reflective', ''],
  [ 'sad/melancholy', ''],
  [ 'sentimental', ''],
  [ 'spiritual', ''],
  [ 'sweeping', ''],
  [ 'triumphant', ''],
  [ 'uplifting', '']
]

mood_list.each do |mood|
  Mood.create( :title => mood[0], :description => mood[1] )
end
