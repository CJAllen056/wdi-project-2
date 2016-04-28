class GroupsController < ApplicationController

	def index
		@q = Group.search(params[:q])
		@groups = @q.result(distinct: true)
	end

	def show
		@group = Group.find(params[:id])
		@books = @group.books
		if @group.current_book_id
			@current_book = Book.find(@group.current_book_id)
		end
		@subscriptions = @group.subscriptions
		@users = @subscriptions.map { |sub| User.find(sub.user_id) }
	end

	def new
		@group = Group.new
	end

	def create
		@group = Group.new(group_params)
		if @group.save
			@group.subscriptions.create!(user_id: current_user.id, group_id: @group.id, user_type: "admin")
			flash[:success] = "Your group has now been created!"
			redirect_to groups_path
		else
			render "new"
		end 
	end

	def edit
		@group = Group.find(params[:id])
	end

	def update
		@group = Group.find(params[:id])
		if @group.update(group_params)
			flash[:success] = "Changes have been made successfully"
			redirect_to group_path
		else
			render "edit"
		end
	end

	def delete
	end

	def add_user_to_group
		@group = Group.find(params[:id])
		@group.subscriptions.new(user_id: current_user.id, group_id: @group.id, user_type: "user")
		if @group.save
			flash[:success] = "You have been subscribed!"
			redirect_to group_path(@group.id)
		else
			flash[:danger] = "You have not been subscribed, please try again"
			redirect_to group_path(@group.id)
		end
	end

	def remove_user_from_group
		@group = Group.find(params[:id])
		@subscription = Subscription.where(user_id: current_user.id, group_id: @group.id)
		if Subscription.destroy(@subscription)
			flash[:success] = "You have been unsubscribed!"
			redirect_to root_path
		else
			flash[:danger] = "There was an error, please try again"
			redirect_to group_path(@group.id)
		end
	end

	private
	def group_params
		params.require(:group).permit(:name, :description, :group_image, :offline, :group_type, :current_book_id)
	end

end
