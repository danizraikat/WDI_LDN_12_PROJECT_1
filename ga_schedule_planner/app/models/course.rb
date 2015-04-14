class Course < ActiveRecord::Base
  belongs_to :course_type
  belongs_to :classroom 

  has_many :bookings
  has_many :users, through: :bookings 
  validates :course_type_id, :name, :description, presence: true 
  validates :capacity, numericality: { less_than_or_equal_to: 50 } 
end
