class CreateJoinTableForBooksAndGenres < ActiveRecord::Migration
	def change
		create_join_table :books, :genres
	end
end
