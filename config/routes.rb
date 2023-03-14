Rails.application.routes.draw do
  # get "restaurants", to: "restaurants#index" # list tous les restaurants
  # get "restaurants/new", to: "restaurants#new" # voir le formulaire de création
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant # voir UN restaurant
  # post "restaurants", to: "restaurants#create" # créer un restaurant (DB)
  # get "restaurants/:id/edit", to: "restaurants#edit" # voir le formulaire d'édition
  # patch "restaurants/:id", to: "restaurants#update" # mettre à jour le restaurant (DB)
  # delete "restaurants/:id", to: "restaurants#destroy" # supprimer un restaurant
  resources :restaurants, only: [:index, :show]

end
