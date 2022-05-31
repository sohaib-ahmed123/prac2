# frozen_string_literal: true

class BookController < ApplicationController

  def index
    @book=Book.new
    @book_partials = Book.all.page(params[:page]).per(1)
  end

  def create; end
end
