class MainCategory < ApplicationRecord
	has_many :sub_categories
	has_many :products

	mount_uploader :avatar ,AvatarUploader
end

