class Rsvp < ActiveRecord::Base
  
  validates :guest_name, :menu_option, presence: true
  
end
