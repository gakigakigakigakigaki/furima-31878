Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items 
  resources :shipping_adresses
  end
  

  