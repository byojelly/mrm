class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #adding for facebook omniauth
  #devise :omniauthable, omniauth_providers: %i[facebook]

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
    #This code will take the data that Google returns and persist it to the database. If the user does not exist, a new one will be created, otherwise, the existing user will be updated.
#  def self.from_omniauth(auth)
#binding.pry
#    where(provider: auth.provider, uid: #auth.uid).first_or_initialize.tap do |user|
#      user.provider = auth.provider
#      user.uid = auth.uid
#      user.name = auth.info.name
#      user.oauth_token = auth.credentials.token
#      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
#      user.save!
#    end
#  end


end
