class RecipeIngredientsController < ApplicationController
	def create
		@recipe_ingredient = RecipeIngredient.new(recipe_ingredient_params)
		if @recipe_ingredient.save
			redirect_to recipe_url(recipe_ingredient_params[:recipe_id])
		end
	end

	def destroy
		@recipe_ingredient = RecipeIngredient.find(params[:id])
		@recipe = @recipe_ingredient.recipe
		if @recipe_ingredient.destroy
			redirect_to recipe_url(@recipe.id)
		end
	end

	private

	def recipe_ingredient_params
		params.require(:recipe_ingredient).permit(:ingredient_id, :recipe_id, :amount)
	end
end
