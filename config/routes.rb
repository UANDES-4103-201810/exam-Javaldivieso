Rails.application.routes.draw do
  resources :shoppings
  resources :pizzaorders
  resources :orders
  resources :delivery_infos
  devise_for :users
  resources :pizzas
  resources :repices
  resources :repiceingredientes
  resources :crusts
  resources :ingredients
  root 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
