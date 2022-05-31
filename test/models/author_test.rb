# frozen_string_literal: true

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test 'author name' do
    author = Author.new(name: 'Jacl')
    assert author.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
