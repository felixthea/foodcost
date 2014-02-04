class ChangeColumnOnIngredients < ActiveRecord::Migration
  def change
  	change_column :ingredients, :amount, :float
  	change_column :ingredients, :cost, :float
  end
end
