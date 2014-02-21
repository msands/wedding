class Rsvp < ActiveRecord::Base
  has_many :guests
  
  validates :guest_name, presence: true
  
  accepts_nested_attributes_for :guests
  
end
