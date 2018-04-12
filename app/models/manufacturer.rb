class Manufacturer < ApplicationRecord
  belongs_to :item
  belongs_to :category
  #both of these associations also include validations that :item, and :category needs to exist before persisting to database

  #sets up nested forms for items to be created with mulptiple categories
  accepts_nested_attributes_for :category
end
