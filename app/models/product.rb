class Product < ApplicationRecord
	belongs_to 	:main_category
	belongs_to  :user
end
