class Category < ApplicationRecord
  has_many :manufacturers
  has_many :items, through: :manufacturers

  validates :name, presence: true


end
