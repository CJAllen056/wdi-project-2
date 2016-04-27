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

   def change_current_book_form
      @book = Book.find(params[:id])
      @subscriptions = current_user.subscriptions.where(user_type: "admin")
      @ids = @subscriptions.map { |sub| sub.group_id }
      @groups = []
      @ids.each do |id|
         @groups.push Group.find(id)
      end
      @group = Group.new
   end

   def change_current_book
      @book = Book.find(params[:id])
      @group = Group.find(params[:group][:id])

      @group.current_book_id = params[:id]
      @group.books << @book
      if @group.save!
         flash[:success] = "Changes have been made successfully"
         redirect_to group_path(@group)
      else
         flash[:danger] = "There was an error, please try again"
         redirect_to :back
      end
   end

   private
      def book_params
         params.require(:book).permit(:title, :author, :release_date, :description, :publisher, :cover_image)
      end

end