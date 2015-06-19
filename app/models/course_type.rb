class CourseType < ActiveRecord::Base
  has_many :courses 
  validates :name, :description, presence: true
end
