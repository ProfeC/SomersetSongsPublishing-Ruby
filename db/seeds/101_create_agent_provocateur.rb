# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Album.where(
  :artist_id => Artist.find_by(name: 'Foreigner').id,
  :description => 'Agent Provocateur is the fifth studio album by American/British rock band Foreigner, released on November 5, 1984. The album was the band\'s first and only number one album in the UK, and it reached the top 5 in the U.S. Although album sales were lower than their previous work in the U.S., it contains the band\'s biggest hit single, \"I Want to Know What Love Is\", which is their only #1 single in the UK and the U.S., staying at the top spot for three and two weeks respectively. The follow-up single, \"That Was Yesterday\", also proved to be a sizeable hit, peaking at #12 in the U.S. The album was certified Platinum in the UK by the BPI, and triple Platinum in the U.S. by the RIAA.[2]

[ https://en.wikipedia.org/wiki/Agent_Provocateur_(album) ]',
  :original_release_date => '1984-11-05',
  :title => 'Agent Provocateur'
).first_or_create

songs_list = [
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:04:12',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'A Love In Vain'
  },
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:04:08',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'Down On Love'
  },
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:04:18',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'Growing Up The Hard Way'
  },
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:05:00',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'I Want To Know What Love Is'
  },
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:04:12',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'Love In Vain'
  },
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:03:57',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'Reaction To Action'
  },
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:03:07',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'She\'s Too Tough'
  },
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:04:54',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'Stranger In My Own House'
  },
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:03:46',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'That Was Yesterday'
  },
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:03:54',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'Tooth And Nail'
  },
  {
    # audio: '',
    # cover_art: '',
    # genre: '',
    length: '00:04:28',
    # mood: '',
    date: '1984-12-19',
    # theme: '',
    title: 'Two Different Worlds'
  }
]

songs_list.each do |song|

  s = Song.where(
    # :album_id => Album.find_by(title: song[:album]).id,
    :album_id => a.id,
    # :audio => song[:audio],
    # :cover_art => song[:conver_art],
    :description => song[:description],
    :length => song[:length],
    :original_release_date => song[:date],
    :title => song[:title]
  ).first_or_create

  if song[:genre]
    song[:genre].each do |g|
      s.genres << Genre.find_by(title: g)
    end
  end

  if song[:mood]
    song[:mood].each do |m|
      s.moods << Mood.find_by(title: m)
    end
  end

  if song[:theme]
    song[:theme].each do |t|
      s.themes << Theme.find_by(title: t)
    end
  end

end
