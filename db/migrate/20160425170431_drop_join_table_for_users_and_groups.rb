class DropJoinTableForUsersAndGroups < ActiveRecord::Migration
	def change
		drop_join_table :groups, :users
	end
end
