class Pin < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :image, :styles => { :medium => "600x800", :thumb => "300x225" }
  
  validates :image, presence: true
  validates :description, presence: true

  has_many :comments, as: :commentable
end
