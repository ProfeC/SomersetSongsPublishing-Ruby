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
  { title: 'rock' },
  { title: 'blues' },
  { title: 'ballad' }
]

genre_list.each do |genre|
  Genre.create( :title => genre.title )
end

# Seed some moods
mood_list = [
  {title: 'Aggressive/Angry', description: ''},
  {title: 'Ambient', description: ''},
  {title: 'Building', description: ''},
  {title: 'Despair', description: ''},
  {title: 'Dramatic', description: ''},
  {title: 'Dreamy/Ethereal', description: ''},
  {title: 'Driving', description: ''},
  {title: 'Dynamic', description: ''},
  {title: 'Elegant/Sophisticated', description: ''},
  {title: 'Emotional', description: ''},
  {title: 'Exciting/Energetic', description: ''},
  {title: 'Futuristic', description: ''},
  {title: 'Happy', description: ''},
  {title: 'Light', description: ''},
  {title: 'Magical', description: ''},
  {title: 'Majestic/Grand', description: ''},
  {title: 'Mellow/Gentle', description: ''},
  {title: 'Moody/Blue', description: ''},
  {title: 'Passionate', description: ''},
  {title: 'Reflective', description: ''},
  {title: 'Sad/Melancholy', description: ''},
  {title: 'Sentimental', description: ''},
  {title: 'Spiritual', description: ''},
  {title: 'Sweeping', description: ''},
  {title: 'Triumphant', description: ''},
  {title: 'Uplifting', description: ''}
]

mood_list.each do |mood|
  Mood.create( :title => mood.title, :description => mood.description )
end

# Seed some themes
theme_list [
  { title: 'Alive/Life/Live', description: '' },
  { title: 'Alone/Lonely', description: '' },
  { title: 'Beautiful/Pretty', description: '' },
  { title: 'Blue', description: '' },
  { title: 'Children', description: '' },
  { title: 'Dirty', description: '' },
  { title: 'Dreams', description: '' },
  { title: 'Eyes', description: '' },
  { title: 'Feel', description: '' },
  { title: 'Games', description: '' },
  { title: 'Hand/Hands', description: '' },
  { title: 'Heart', description: '' },
  { title: 'Heaven', description: '' },
  { title: 'Heroes', description: '' },
  { title: 'Home', description: '' },
  { title: 'Hope/Wish', description: '' },
  { title: 'Late', description: '' },
  { title: 'Lie', description: '' },
  { title: 'Man/Men', description: '' },
  { title: 'Miss You', description: '' },
  { title: 'Morning', description: '' },
  { title: 'Need/Want', description: '' },
  { title: 'Night', description: '' },
  { title: 'Rain', description: '' },
  { title: 'Risk', description: '' },
  { title: 'Run/Running', description: '' },
  { title: 'Stars/Moon', description: '' },
  { title: 'Telephone', description: '' },
  { title: 'Temperature', description: '' },
  { title: 'Time', description: '' },
  { title: 'Tonight', description: '' },
  { title: 'Waiting', description: '' },
  { title: 'Winning/Achievement', description: '' },
  { title: 'Woman/Women', description: '' },
  { title: 'World', description: '' }
]

theme_list.each do |theme|
  Theme.create( :title => theme.title, :description => theme.description )
end

# Seed some artists
artist_list = [
  { name: '99 Posse' }, #1
  { name: 'Tina Arena' }, #2
  { name: 'Bad Company' }, #3
  { name: 'Memphis Bleek (Explicit)' }, #4
  { name: 'Cheap Trick' }, #5
  { name: 'Cherie' }, #6
  { name: 'Eric Clapton' }, #7
  { name: 'Cult, The' }, #8
  { name: 'EPMD' }, #9
  { name: 'Foreigner' }, #10
  { name: 'Heart' }, #11
  { name: 'Mick Jones' }, #12
  { name: 'M.O.P.' }, #13
  { name: 'Ozzy Osbourne' }, #14
  { name: 'Scorpions, The' }, #15
  { name: 'Duncan Sheik' }, #16
  { name: 'Strange Fruit' }, #17
  { name: 'Strange Fruit w/ Jimmy Nail' }, #18
  { name: 'Armand Van Helden' } #19
]

artist_list.each do |artist|
  Artist.create( :title => artist.title, :description => artist.description )
end

# Seed some albums
albums = Album.create ([
  {
    title: 'Eye II Eye',
    artist_id: 15
  },
  {
    title: 'Mick Jones',
    artist_id: 12
  },
  {
    title: 'Agent Provocateur',
    artist_id: 10
  },
  {
    title: 'Double Vision',
    artist_id: 10
  }
])

# Seed some songs
songs = Song.create ([
  {
    title: '10 Light Years Away',
    original_release_date: '1999-11-22',
    length: '00:03:52',
    album_id: 1
  },
  {
    title: '4 Wheels Turnin\'',
    original_release_date: '1989-10-4',
    length: '00:04:35',
    album_id: 2
  },
  {
    title: 'A Love In Vain',
    original_release_date: '1984-12-19',
    length: '00:04:12',
    album_id: 3
  },
  {
    title: 'Blue Morning, Blue Day',
    original_release_date: '1980-10-10',
    length: '00:03:12',
    album_id: 4
  }
])

