class AddImageToMeal < ActiveRecord::Migration[5.0]
  def up
    add_attachment :meals, :image
  end
end
