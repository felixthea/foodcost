Foodcost::Application.routes.draw do
	root to: 'ingredients#index'
  resources :ingredients
  resources :recipes
  resources :recipe_ingredients, only: [:create, :destroy]
end
