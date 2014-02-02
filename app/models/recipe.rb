class Recipe < ActiveRecord::Base

	has_many(
		:recipe_ingredients,
		class_name: "RecipeIngredient",
		foreign_key: :recipe_id,
		primary_key: :id
	)
end
