class MainCategory < ApplicationRecord
	has_many :sub_category
	has_many :products
end

