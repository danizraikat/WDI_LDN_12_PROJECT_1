class Campus < ActiveRecord::Base
  has_many :classrooms
  has_many :courses, through: :classrooms 
  validates :name, :address, presence: true
  mount_uploader :campus_location_image, CampusLocationImageUploader
end
