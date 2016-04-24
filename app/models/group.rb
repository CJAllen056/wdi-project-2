class Group < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :books

	mount_uploader :group_image, GroupImageUploader
end
