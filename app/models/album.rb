class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs

  # Add file attachments
  has_attached_file :cover_art, :styles => { :large => "300x300", :medium => "250x250>", :thumb => "125x125>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :cover_art, :content_type => /\Aimage\/.*\Z/

  scope :sorted, lambda { order("albums.name ASC") }
  scope :sorted_rev, lambda { order("albums.name DESC") }

  def self.search_by_artist(q)
    where("artist_id is ?", "#{q}")
  end

  # NOTE: Search for a album by name
  def self.search_by_name(name)
    aAlbum = where('title ILIKE ?', name).first

    # NOTE: Check to see if there's a album by that name
    if aAlbum.present?
      aAlbum.id
    else
      ''
    end
  end

  # NOTE: Search for a album by id
  def self.search_by_id(id)
    find(id)
  end

end
