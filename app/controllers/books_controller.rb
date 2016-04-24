class BooksController < ApplicationController

   def index
      @q = Book.search(params[:q])
      @books = @q.result(distinct: true)
   end

   def show
      @book = Book.find(params[:id])
   end

   def new
      @book = Book.new
   end

   def create
      @book = Book.new(book_params)
      if @book.save
         flash[:success] = "The book has been added"
         redirect_to books_path
      else
         render "new"
      end 
   end

   def edit
      @book = Book.find(params[:id])
   end

   def update
      @book = Book.find(params[:id])
      if @book.update(book_params)
         flash[:success] = "Changes have been made successfully"
         redirect_to book_path
      else
         render "edit"
      end
   end

   def delete
   end

   private
      def book_params
         params.require(:book).permit(:title, :author, :release_date, :description, :publisher, :cover_image)
      end

end