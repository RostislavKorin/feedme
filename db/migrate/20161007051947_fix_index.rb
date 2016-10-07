class FixIndex < ActiveRecord::Migration[5.0]
  def change
  	remove_index(:meals, :name => "index_meals_on_user_id")
  	add_index :meals, :user_id
  	add_column :users, :city, :string
  end
end
