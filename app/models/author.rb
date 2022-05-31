# frozen_string_literal: true
class Author < ApplicationRecord
  has_many :books
  before_save :c
  around_save :d
  before_create :e
  around_create :f
  after_create :g
  after_save :h
  after_commit :l
  after_rollback :k
  before_destroy :lo
  private
  def lo
    puts "KKKKKKKKKKKKKK"
  end
  def l
    puts "LLLLLLLLLLLLL"
  end
  def k
    puts 'K'
  end
  def a
    puts 'BEFORE VALIDATION'
  end

  def b
    puts 'AFTER VALIDATION'

  end

  def c
    puts 'BEFORE '
  end

  def d
    puts 'D'
    yield
  end

  def e
    puts 'E'
  end
  def f
    puts 'F'
    yield
  end

  def g
    puts 'G'
  end

  def h
    puts 'h'
  end

  def j
    puts 'J'
  end
end
