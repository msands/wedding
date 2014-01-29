class Pin < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :image, :styles => { :medium => "600x1200", :thumb => "600x600" }
  
  validates :image, presence: true
  validates :description, presence: true

  has_many :comments, as: :commentable
end
