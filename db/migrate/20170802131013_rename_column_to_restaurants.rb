class RenameColumnToRestaurants < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :telephone, :phone_number
  end
end
