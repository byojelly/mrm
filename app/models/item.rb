class Item < ApplicationRecord
  belongs_to :shop
  has_many :item_categories
  has_many :categories, through: :item_categories

  validates :name, :condition, :itemtype, :shop_id, presence: true
  validates :condition, inclusion: { in: %w(used new), message: "%{value} is not a valid condition of used or new" }
  validates :itemtype, inclusion: { in: %w(electronic instrument, gadget, miscellaneous), message: "%{value} is not a valid item type" }
end
