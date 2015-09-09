# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed some artists
user_list = [
  {
    admin: true,
    email: 'gclark2@gmail.com',
    name: 'Lee',
    password: 'insecure-password'
  },
  {
    admin: true,
    email: 'irsmusic@yahoo.com',
    name: 'Justin',
    password: 'insecure-password'
  }
]

user_list.each do |user|
  User.create({
    :email => user[:email],
    :admin => user[:admin],
    :name => user[:name],
    :password => user[:password],
    :password_confirmation => user[:password]
  })
end

#User.create!({:email => "guy@gmail.com", :roles => ["admin"], :password => "111111", :password_confirmation => "111111" })
