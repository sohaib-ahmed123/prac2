# frozen_string_literal: true

class CreateExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :examples, &:timestamps
  end
end
