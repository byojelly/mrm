class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validations  great thing about deivse, is that the below validations as well as more come standard with devise
  #validates :email, presence: true
  #validates :email, uniqueness: true

  #roles
  enum role: [:normal, :admin]
  #associations
  has_many :shops
  has_one :contact
  has_many :items, through: :shops

  def set_normal_role
    #code to set user role to normal
    #should also setup code to setup an admin as well
    
  end
end
