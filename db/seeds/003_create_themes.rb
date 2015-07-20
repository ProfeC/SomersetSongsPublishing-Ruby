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
  ['alive/life/live', ''],
  ['alone/lonely', ''],
  ['beautiful/pretty', ''],
  ['blue', ''],
  ['children', ''],
  ['dirty', ''],
  ['dreams', ''],
  ['eyes', ''],
  ['feel', ''],
  ['games', ''],
  ['hand/hands', ''],
  ['heart', ''],
  ['heaven', ''],
  ['heroes', ''],
  ['home', ''],
  ['hope/wish', ''],
  ['late', ''],
  ['lie', ''],
  ['man/men', ''],
  ['miss you', ''],
  ['morning', ''],
  ['need/want', ''],
  ['night', ''],
  ['rain', ''],
  ['risk', ''],
  ['run/running', ''],
  ['stars/moon', ''],
  ['telephone', ''],
  ['temperature', ''],
  ['time', ''],
  ['tonight', ''],
  ['waiting', ''],
  ['winning/achievement', ''],
  ['woman/women', ''],
  ['world', '']
]

theme_list.each do |theme|
  Theme.create( :title => theme[0], :description => theme[1] )
end
