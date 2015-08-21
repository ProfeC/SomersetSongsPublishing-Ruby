class Message < ActiveRecord::Base
  validates_presence_of :name, :project, :description
  validates_format_of :email_address, :with => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
