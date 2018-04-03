class ItemCategory < ApplicationRecord
  belongs_to :item
  belongs_to :category
  #both of these associations also include validations that :item, and :category needs to exist before persisting to database
end
