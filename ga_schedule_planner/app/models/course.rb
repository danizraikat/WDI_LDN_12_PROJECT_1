class Course < ActiveRecord::Base
  has_many :bookings
  has_and_belongs_to_many :users, through: :bookings 
end