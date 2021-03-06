class User < ApplicationRecord
  has_many :bookings # bookings as a client
  has_many :offers
  has_many :bookings_as_owner, through: :offers, source: :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
end
