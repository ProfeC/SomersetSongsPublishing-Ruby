class Page < ActiveRecord::Base

  # NOTE: Find pages by slug
  def self.find(slug)
    find_by_slug(slug)
  end

  def to_param
    slug
  end
end
