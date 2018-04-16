class Tuneup < ApplicationRecord
  belongs_to :item
  belongs_to :technician

  validates :date, presence: true
  validates_presence_of :technician    #makes sure that a technician exists in the database before being associated to a Tuneup

#sets up nested forms for items to be created with mulptiple categories
  accepts_nested_attributes_for :technician
end
