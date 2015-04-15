class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings 
  has_many :courses, through: :bookings
  validates :role, :first_name, :second_name, :gender, :tel_number, presence: true 
  validates :tel_number, numericality: true 
  validates :gender, inclusion: { in: %w(Male Female),
    message: "%{value} is not a gender" }
  validates :role, inclusion: { in: %w(Student Instructor Admin),
    message: "%{value} is not a GA role" }
  validates :first_name, :second_name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

end
 
  # gender as male or female
  
  # role out of an array of roles
  # first and second name not numbers

