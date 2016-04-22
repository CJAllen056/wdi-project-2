class CreateJoinTableForGroupsAndBooks < ActiveRecord::Migration
	def change
		create_join_table :groups, :books
	end
end
