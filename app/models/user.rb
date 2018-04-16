class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  #validations  great thing about deivse, is that the below validations as well as more come standard with devise
  #validates :email, presence: true
  #validates :email, uniqueness: true

  #associations
  has_many :shops
  has_one :contact
  has_many :items, through: :shops

  #roles. This would be used with pundit to setup authorization, but at this time not pursuing this functionality do to time constraints
  enum role: [:normal, :admin]
  def set_normal_role
    #code to set user role to normal
    #should also setup code to setup an admin as well
  end
    #This code will take the data that Github(or other omniauth) returns and persist it to the database. If the user does not exist, a new one will be created, otherwise, the existing user will be updated.
    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
          user.provider = auth.provider
          user.uid = auth.uid
          user.email = auth.info.email
          user.password = Devise.friendly_token[0,20]
        end
    end
end
