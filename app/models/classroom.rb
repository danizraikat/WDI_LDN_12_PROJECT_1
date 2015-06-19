class Classroom < ActiveRecord::Base
  has_many :courses
  belongs_to :campus 
  validates :name, :capacity, :campus_id, presence: true
end
