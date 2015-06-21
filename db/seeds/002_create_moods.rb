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
  ['Aggressive/Angry', ''],
  [ 'Ambient', ''],
  [ 'Building', ''],
  [ 'Despair', ''],
  [ 'Dramatic', ''],
  [ 'Dreamy/Ethereal', ''],
  [ 'Driving', ''],
  [ 'Dynamic', ''],
  [ 'Elegant/Sophisticated', ''],
  [ 'Emotional', ''],
  [ 'Exciting/Energetic', ''],
  [ 'Futuristic', ''],
  [ 'Happy', ''],
  [ 'Light', ''],
  [ 'Magical', ''],
  [ 'Majestic/Grand', ''],
  [ 'Mellow/Gentle', ''],
  [ 'Moody/Blue', ''],
  [ 'Passionate', ''],
  [ 'Reflective', ''],
  [ 'Sad/Melancholy', ''],
  [ 'Sentimental', ''],
  [ 'Spiritual', ''],
  [ 'Sweeping', ''],
  [ 'Triumphant', ''],
  [ 'Uplifting', '']
]

mood_list.each do |mood|
  Mood.create( :title => mood[0], :description => mood[1] )
end
