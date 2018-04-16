class Technician < ApplicationRecord
  has_many :tuneups
  has_many :items, through: :tuneups

  validates :name, presence: true
end
