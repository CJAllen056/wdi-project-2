class Book < ActiveRecord::Base
	has_and_belongs_to_many :genres
	has_and_belongs_to_many :users
	has_and_belongs_to_many :groups

	mount_uploader :cover_image, CoverImageUploader
end
