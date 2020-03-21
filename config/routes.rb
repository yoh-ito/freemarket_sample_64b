Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "items#index"
  resources :items, only: [:index, :show , :edit] do
    resources :images, only: [:index]
  end
  resources :users, only: [:index, :new]
end
