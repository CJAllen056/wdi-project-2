class GroupsController < ApplicationController

	def index
		@q = Group.search(params[:q])
		@groups = @q.result(distinct: true)
	end

	def show
		@group = Group.find(params[:id])
		if @group.current_book_id
			@current_book = Book.find(@group.current_book_id)
		end
	end

	def new
		@group = Group.new
	end

	def create
		@group = current_user.groups.new(group_params)
		if @group.save
			flash[:success] = "Your group has now been created!"
			redirect_to groups_path
		else
			render "new"
		end 
	end

	def edit
	end

	def delete
	end

	private
		def group_params
			params.require(:group).permit(:name, :description, :group_image, :offline, :group_type, :current_book_id)
		end

end
