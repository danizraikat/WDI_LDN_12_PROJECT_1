class Course < ActiveRecord::Base
  has_many :bookings
  has_and_belongs_to_many :users, through: :bookings 
  belongs_to :course_type
  belongs_to :classroom 
  belongs_to :campus, through: :classroom
end
