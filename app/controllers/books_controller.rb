class BooksController < ApplicationController

  def index
    @author = Author.find(params[:author_id])
    @books = @author.books
  end

  def show
    @book = Book.find(params[:id])
  end

end
