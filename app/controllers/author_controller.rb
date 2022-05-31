# frozen_string_literal: true

class AuthorController < ApplicationController
  def new
    @author = Author.new
  end
end
