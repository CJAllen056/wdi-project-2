class BooksController < ApplicationController

   def index
      @q = Book.search(params[:q])
      @books = @q.result(distinct: true)
   end

   def show
      @book = Book.find(params[:id])
   end

   def new
   end

   def create
   end

   def edit
   end

   def update
   end

   def delete
   end

end