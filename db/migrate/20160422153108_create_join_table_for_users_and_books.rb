class CreateJoinTableForUsersAndBooks < ActiveRecord::Migration
	def change
		create_join_table :users, :books
	end
end
