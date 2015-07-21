class Artist < ActiveRecord::Base
  has_many :albums

  # Add file attachments
  has_attached_file :cover_art, :styles => { :large => "300x300", :medium => "250x250>", :thumb => "125x125>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :cover_art, :content_type => /\Aimage\/.*\Z/

  scope :sorted, lambda { order("artists.name ASC") }
  scope :sorted_rev, lambda { order("artists.name DESC") }

  # NOTE: Search for a mood by name
  def self.search_by_name(name)
    aArtist = where('name ILIKE ?', name).first

    # NOTE: Check to see if there's a mood by that name
    if aArtist.present?
      aArtist.id
    else
      ''
    end
  end

  # NOTE: Search for a mood by name
  def self.search_by_id(id)
    find(id)
  end
end
