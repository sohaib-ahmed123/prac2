# frozen_string_literal: true
class MyCustomValidator<ActiveModel::Validator
  def validate(record)
    if record.name.start_with? '/'
      record.errors.add :name, "No hame starts with /"
    end
  end
end
def transfer_money

  ActiveRecord::Base.transaction do
    Book.first.update!(name:"KKKK")
  end

end
class Book < ApplicationRecord
  include ActiveModel::Validations
  belongs_to :author
  validates :name,length: {minimum: 3}
  validates_with MyCustomValidator
  before_validation :a
  after_validation :b
  before_save :c
  around_save :d
  before_create :e
  around_create :f
  after_create :g
  after_save :h
  after_commit :j

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
end

def e
  puts 'E'
end
def f
  puts 'F'
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
