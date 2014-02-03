class IngredientsController < ApplicationController
	def index
		@ingredients = Ingredient.all
	end

	def new
	end

	def create
		@ingredient = Ingredient.new(ingredient_params)
		if @ingredient.save
			redirect_to ingredients_url
		else
			render :new
		end
	end

	def destroy
		@ingredient = Ingredient.find(params[:id])
		if @ingredient.destroy
			redirect_to ingredients_url
		end
	end

	private

	def ingredient_params
		params.require(:ingredient).permit(:name, :amount, :cost)
	end
end
