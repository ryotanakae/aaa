class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Bppl.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_path_book
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
  end

  def destroy
  end
  
  private

 def book_params
   params.require(:book).permit(:title, :body)
 end
  
end
