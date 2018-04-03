class Item < ApplicationRecord
  belongs_to :shop
  has_many :item_categories
  has_many :categories, through: :item_categories
end
