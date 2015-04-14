class Campus < ActiveRecord::Base
  has_many :classrooms
  has_many :courses, through: :classrooms 
end
