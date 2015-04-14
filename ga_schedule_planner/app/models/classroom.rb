class Classroom < ActiveRecord::Base
  has_many :courses
  belongs_to :campus 
end
