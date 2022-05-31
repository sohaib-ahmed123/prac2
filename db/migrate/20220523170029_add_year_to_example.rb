class AddYearToExample < ActiveRecord::Migration[5.2]
  def change
    add_column :examples, :year, :decimal
  end
end
