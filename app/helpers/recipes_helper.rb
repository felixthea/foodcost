module RecipesHelper
	def recipe_cost
		recipe = Recipe.find(params[:id])
		total_cost = 0
		recipe.recipe_ingredients.each do |recipe_ingredient|
			cost_per_gram = (recipe_ingredient.ingredient.cost * 1.0) / recipe_ingredient.ingredient.amount
			total_cost += (recipe_ingredient.amount * cost_per_gram)
		end

		total_cost
	end
end
