class Item < ApplicationRecord
  belongs_to :shop
  has_many :item_categories
  has_many :categories, through: :item_categories

  validates :name, :condition, :itemtype, :shop_id, presence: true
  validates :condition, inclusion: { in: %w(used new), message: "%{value} is not a valid condition of used or new" }
  validates :itemtype, inclusion: { in: %w(electronic instrument gadget miscellaneous), message: "%{value} is not a valid item type" }

  scope :available, -> {where("available = ?", true)}
  #this scope builds upon the previous scope
  scope :available_and_new, -> {available.order("created_at DESC").limit(6)}
        #where("available = ?", true)
  scope :unavailable, -> {where("available = ?", false)}



end



#Client.order("created_at DESC")
 #scope :published_and_commented, published.and(self.arel_table[:comments_count].gt(0))
#scope :visible, -> {where(:visible => true)}
#available.order("created_at DESC").limit(3).count