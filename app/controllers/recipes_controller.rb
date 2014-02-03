class RecipesController < ApplicationController
	def index
		@recipes = Recipe.all
	end

	def show
		@recipe = Recipe.find(params[:id])
		@recipe_ingredients = @recipe.recipe_ingredients
		@ingredients = Ingredient.all
	end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			redirect_to recipe_url(@recipe.id)
		end
	end

	private

	def recipe_params
		params.require(:recipe).permit(:name)
	end
end
