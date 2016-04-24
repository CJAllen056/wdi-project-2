class StaticsController < ApplicationController
	
	def home
		@groups = Group.all
		@books = Book.all
	end

end
