class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings 
  has_many :courses, through: :bookings
  validates :role, :first_name, :second_name, :gender, :tel_number, presence: true 
end
