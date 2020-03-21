Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "items#index"
  resources :items, only: [:show , :edit]
  resources :users, only: [:new , :show]
  resources :users_side, only: [:new , :show]
  resources :cards, only: [:new]
end