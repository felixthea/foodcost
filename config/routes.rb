Foodcost::Application.routes.draw do
  resources :ingredients
  resources :recipes
  resources :recipe_ingredients, only: [:create, :destroy]
end
