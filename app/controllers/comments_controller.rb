class CommentsController < ApplicationController

  before_filter :find_book

  def create
    @comment = @book.comments.build(params[:comment])
    if @comment.save
      redirect_to @book, :notice => 'Thanks for your comment!'
    else
      render 'books/show'
    end
  end

  def destroy
    @comment
  end

private
  def find_book
    @book = Book.find(params[:book_id])
  end

end
