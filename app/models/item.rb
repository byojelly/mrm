class Item < ApplicationRecord
  belongs_to :shop
  has_many :tuneups
  has_many :technicians, through: :tuneups
#sets up nested forms for items to be created
  accepts_nested_attributes_for :tuneups
#validations
  validates :name, :condition, :itemtype, :shop_id, presence: true
  validates :condition, inclusion: { in: %w(used new), message: "%{value} is not a valid condition of used or new" }
  validates :itemtype, inclusion: { in: %w(electronic instrument gadget miscellaneous), message: "%{value} is not a valid item type" }
  validates :year, numericality: {greater_than: 0, less_than_or_equal_to: Date.today.year}

#scopes to be used on genericpage
  scope :available, -> {where("available = ?", true)}
  #this scope builds upon the previous scope
  scope :available_and_new, -> {available.order("created_at DESC").limit(6)}
  scope :unavailable, -> {where("available = ?", false)}

#avoiding duplicate tuneups
  def tuneups_attributes=(tuneups_attributes)
    tuneups_attributes.values.each do |t|
      tuneup = Tuneup.find_or_create_by(t)
      self.tuneups << tuneup
    end
  end
end
