class Contact < ApplicationRecord
  belongs_to :user

  #validations
  validates :name, :zip, :user_id, presence: true
  validates :zip, :phone, numericality: true
  validates :zip, length: { is: 5, message: 'Zipcodes must be 5 characters long in the US.' }
  validates :phone, length: { is: 5, message: 'Phone numbers must be saved as 10 digit numbers into databse.' }


  #validates :email, uniqueness: true
end
