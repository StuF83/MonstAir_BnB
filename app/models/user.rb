class User < ApplicationRecord
  has_many :bookings
  has_many :owned_trucks, class_name: 'Truck'
  has_many :trucks, through: :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
