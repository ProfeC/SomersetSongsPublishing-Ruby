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
  [ 'Alive/Life/Live', ''],
  [ 'Alone/Lonely', ''],
  [ 'Beautiful/Pretty', ''],
  [ 'Blue', ''],
  [ 'Children', ''],
  [ 'Dirty', ''],
  [ 'Dreams', ''],
  [ 'Eyes', ''],
  [ 'Feel', ''],
  [ 'Games', ''],
  [ 'Hand/Hands', ''],
  [ 'Heart', ''],
  [ 'Heaven', ''],
  [ 'Heroes', ''],
  [ 'Home', ''],
  [ 'Hope/Wish', ''],
  [ 'Late', ''],
  [ 'Lie', ''],
  [ 'Man/Men', ''],
  [ 'Miss You', ''],
  [ 'Morning', ''],
  [ 'Need/Want', ''],
  [ 'Night', ''],
  [ 'Rain', ''],
  [ 'Risk', ''],
  [ 'Run/Running', ''],
  [ 'Stars/Moon', ''],
  [ 'Telephone', ''],
  [ 'Temperature', ''],
  [ 'Time', ''],
  [ 'Tonight', ''],
  [ 'Waiting', ''],
  [ 'Winning/Achievement', ''],
  [ 'Woman/Women', ''],
  [ 'World', '' ]
]

theme_list.each do |theme|
  Theme.create( :title => theme[0], :description => theme[1] )
end
