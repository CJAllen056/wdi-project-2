class GroupsController < ApplicationController

	def index
		@q = Group.search(params[:q])
		@groups = @q.result(distinct: true)
	end

	def show
		@group = Group.find(params[:id])
		@current_book = Book.find(@group.current_book_id)
	end

	def new
	end

	def create
	end

	def edit
	end

	def delete
	end

end
