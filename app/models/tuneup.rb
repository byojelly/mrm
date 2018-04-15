class Tuneup < ApplicationRecord
  belongs_to :item
  belongs_to :technician
  #both of these associations also include validations that :item, and :category needs to exist before persisting to database
  validates :date, presence: true    #message: "if adding a tuneup, please complete both date and technician fields"
  validates_presence_of :technician    #message: "if adding a tuneup, please complete both date and technician fields"
  #validates_presence_of :item

  #sets up nested forms for items to be created with mulptiple categories
  accepts_nested_attributes_for :technician


end
