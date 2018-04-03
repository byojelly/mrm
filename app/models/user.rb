class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validations  great thing about deivse, is that the below validations as well as more come standard with devise
  #validates :email, presence: true
  #validates :email, uniqueness: true

  has_many :shops
  has_one :contact
  has_many :items, through: :shops
end
