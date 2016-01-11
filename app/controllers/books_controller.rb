class BooksController < ApplicationController

    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user, only: :destroy
 def index
     @books=Book.all
 end
   # GET /books/new
  def new
    logged_in_user
    @book = Book.new
  end
  def borrow
     logged_in_user
    @book = Book.new
   
  end
def edit
    @book = current_user.books.find_by(id: params[:id])
end
def show
    @book = current_user.books.find_by(id: params[:id])
end
def create
@book = current_user.books.build(book_params)
@book.status = "未借出"
if @book.save
flash[:success] = "book created!"
redirect_to root_url
else
    @feed_items = []
render 'static_pages/home'
end
end
def destroy
@book.destroy
flash[:success] = "book deleted"
redirect_to request.referrer || root_url
end
def update
    @book = current_user.books.find_by(id: params[:id])
    respond_to do |format|
      @book.update(book_params)
       format.html { redirect_to home_path, notice: 'Book was successfully updated.' }
 end
end
  
private
    def set_book
      @book = Book.find(params[:id])
    end
def book_params

 params.require(:book).permit(:bookname, :author, :press, :isbn, :user_id, :borrower, :explanation, :status, :booktype, :extend)
end
def correct_user
@book = current_user.books.find_by(id: params[:id])
redirect_to root_url if @book.nil?
end
end





