class User < ApplicationRecord
	 devise :confirmable,
       :database_authenticatable,
       :recoverable,
       :registerable,
       :rememberable,
       :trackable,
       :validatable
has_many :product
end