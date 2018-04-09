class Shop < ApplicationRecord

  belongs_to :user
  has_many :items
  accepts_nested_attributes_for :items


  validates :name, :user_id, presence: true
end
