class User < ApplicationRecord
	 devise :confirmable,
       :database_authenticatable,
       :recoverable,
       :registerable,
       :rememberable,
       :trackable,
       :validatable,:omniauthable, omniauth_providers: [:google_oauth2]
  has_many :products
 
	def self.from_omniauth(access_token)
    data = access_token.info

    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(
           email: data['email'],
           password: Devise.friendly_token[0,20]
        )
    end
    user
  end
end