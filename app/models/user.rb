class User < ApplicationRecord
  has_person_name

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :booking_types

  validates :booking_link, presence: true

  # relationship model: user -> booking_types -> [booking1, booking2, booking3]
end
