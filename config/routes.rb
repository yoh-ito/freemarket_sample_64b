Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  root "items#index"
  resources :items, only: [:show , :edit, :new]
  resources :users, only: [:new]
  resources :addresses, only: [:new, :create]
end
