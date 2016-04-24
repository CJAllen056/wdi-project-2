class AddCurrentBookIdToGroups < ActiveRecord::Migration

	def change
		add_column :groups, :current_book_id, :integer
	end
	
end
