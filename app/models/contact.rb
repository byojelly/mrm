class Contact < ApplicationRecord
  belongs_to :user

  #default values were implemented when creating a new user to allow this validations to work while creating a new contact with nil / default values
        validates :name, :zip, :user_id, presence: true
        validates :zip, :phone, numericality: true
        validates :zip, length: { is: 5, message: 'Zipcodes must be 5 characters long in the US.' }
        validates :phone, length: { is: 10, message: 'Phone numbers must be saved as 10 digit numbers into databse.' }
        validates :state, length: {is: 2}
        validates :state, format: { with: /\A[a-zA-Z]+\z/, message: "only 2 allows letters" }
end
