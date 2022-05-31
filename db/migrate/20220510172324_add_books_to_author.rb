# frozen_string_literal: true

class AddBooksToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_reference :authors, :book, foreign_key: true
  end
end
