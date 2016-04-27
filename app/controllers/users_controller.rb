class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@books = @user.books
	end

	def account
	end

	def edit
	end

	def update
	end
	
end
