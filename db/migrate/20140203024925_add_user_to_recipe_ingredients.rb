class AddUserToRecipeIngredients < ActiveRecord::Migration
  def change
  	add_column :recipe_ingredients, :user_id, :integer
  	add_index :recipe_ingredients, :user_id
  end
end
