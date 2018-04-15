class Item < ApplicationRecord
  belongs_to :shop
  has_many :tuneups, inverse_of: :item  #https://robots.thoughtbot.com/accepts-nested-attributes-for-with-has-many-through
  has_many :technicians, through: :tuneups

#sets up nested forms for items to be created
  accepts_nested_attributes_for :tuneups


  validates :name, :condition, :itemtype, :shop_id, presence: true
  validates :condition, inclusion: { in: %w(used new), message: "%{value} is not a valid condition of used or new" }
  validates :itemtype, inclusion: { in: %w(electronic instrument gadget miscellaneous), message: "%{value} is not a valid item type" }
  validates :year, numericality: {greater_than: 0, less_than_or_equal_to: Date.today.year}


  scope :available, -> {where("available = ?", true)}
  #this scope builds upon the previous scope
  scope :available_and_new, -> {available.order("created_at DESC").limit(6)}
        #where("available = ?", true)
  scope :unavailable, -> {where("available = ?", false)}


  #avoiding duplicate tuneups
  def tuneups_attributes=(tuneups)
    #binding.pry
    tuneups.each do |t|
      #binding.pry
      Tuneup.find_or_create_by(technician_id: t[1][:technician_id], date: t[1][:date])

    end
  end

end
#Tuneup.find_or_create_by(item_id: self.id, technician_id: t[1][:technician_id)
#Tuneup.find_by(item_id: tuneup.item_id, technician_id: tuneup.technician_id, date: tuneup.date)
#Tuneup.find_by(technician_id: tuneup.technician_id, date: tuneup.date)
#Tuneup.find_or_create_by(technician_id: tuneup.technician_id, date: tuneup.date)
