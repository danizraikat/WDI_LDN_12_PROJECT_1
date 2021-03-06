class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :course 
  validates :user_id, :course_id, presence: true
  validates :paid, :inclusion => {:in => [true]}
end
