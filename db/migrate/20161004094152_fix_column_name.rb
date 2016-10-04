class FixColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :first_name, :full_name
  	remove_column :users, :second_name
  end
end
