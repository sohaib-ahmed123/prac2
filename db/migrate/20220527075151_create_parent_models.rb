class CreateParentModels < ActiveRecord::Migration[5.2]
  def change
    create_table :parent_models do |t|

      t.timestamps
    end
  end
end
