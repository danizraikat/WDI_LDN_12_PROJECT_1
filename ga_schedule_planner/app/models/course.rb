class Course < ActiveRecord::Base
  belongs_to :course_type
  belongs_to :classroom 

  has_many :bookings
  has_many :users, through: :bookings 

end
