class Rsvp < ActiveRecord::Base
  has_many :guests
  
  accepts_nested_attributes_for :guests
  
end
