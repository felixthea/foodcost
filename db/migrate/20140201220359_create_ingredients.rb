class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
    	t.string :name
    	t.integer :amount
    	t.integer :cost
      t.timestamps
    end
  end
end
