class AddAmountToRecipeIngredient < ActiveRecord::Migration
  def change
  	add_column :recipe_ingredients, :amount, :integer
  end
end
