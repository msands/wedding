class Guest < ActiveRecord::Base
  
  belongs_to :rsvp
  
  validates :guest_name, :menu_option, presence: true
  
end
