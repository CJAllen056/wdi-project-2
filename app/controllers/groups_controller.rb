class GroupsController < ApplicationController

	def index
		@groups = Group.all
	end

	def show
		@group = Group.find(params[:id])
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
