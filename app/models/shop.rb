class Shop < ApplicationRecord

  belongs_to :user
  has_many :items


  validates :name, :user_id, :detail, presence: true

end
