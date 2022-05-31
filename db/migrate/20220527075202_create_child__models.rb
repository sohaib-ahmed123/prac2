class CreateChildModels < ActiveRecord::Migration[5.2]
  def change
    create_table :child__models do |t|

      t.timestamps
    end
  end
end
