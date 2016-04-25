class Group < ActiveRecord::Base
	has_and_belongs_to_many :books
	has_many :subscriptions
	has_many :users, :through => :subscriptions

	mount_uploader :group_image, GroupImageUploader
end
