class ChangeColumnInRecipeIngredients < ActiveRecord::Migration
  def change
  	change_column :recipe_ingredients, :amount, :float
  end
end
