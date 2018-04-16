class Contact < ApplicationRecord
  belongs_to :user

  #validations where commented out, because we want an instance of a contact to be created when a new user is created, this would make nil values for all of the contact attributes which could be later changed in the contact edit screen
        validates :name, :zip, :user_id, presence: true
        validates :zip, :phone, numericality: true
        validates :zip, length: { is: 5, message: 'Zipcodes must be 5 characters long in the US.' }
        validates :phone, length: { is: 10, message: 'Phone numbers must be saved as 10 digit numbers into databse.' }
        validates :state, length: {is: 2}
        validates :state, format: { with: /\A[a-zA-Z]+\z/, message: "only 2 allows letters" }
  #validates :email, uniqueness: true

end
