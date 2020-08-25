class Product < ApplicationRecord
	belongs_to 	:main_category
	belongs_to  :sub_category
	belongs_to  :user

	mount_uploaders :avatars, AvatarUploader
	serialize :avatars, JSON
end
