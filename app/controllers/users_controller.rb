class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@books = @user.books
		@subscriptions = @user.subscriptions
		@groups = @subscriptions.map { |sub| Group.find(sub.group_id) }
	end

	def account
	end

	def edit
	end

	def update
	end
	
end
