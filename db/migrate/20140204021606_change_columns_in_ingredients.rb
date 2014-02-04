class ChangeColumnsInIngredients < ActiveRecord::Migration
  def change
  	change_column :ingredients, :amount, :decimal, precision: 5, scale: 2
  	change_column :ingredients, :cost, :decimal, precision: 5, scale: 2
  end
end
