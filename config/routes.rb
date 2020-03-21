Rails.application.routes.draw do
  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#show"
  resources :cards, only: [:new, :create]
  resources :users
end

