class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable :recoverable,
	devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable

	has_and_belongs_to_many :groups
	has_and_belongs_to_many :books
end
