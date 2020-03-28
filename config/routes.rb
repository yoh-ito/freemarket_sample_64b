Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "items#index"
  resources :items, only: [:show , :edit]
  resources :users, only: [:new , :show]
  resources :users_side, only: [:new , :show]
  resources :cards, only: [:index,:new,:show]do
    ENV['PAYJP_PRIVATE_KEY']
    ENV['PAYJP_KEY']
    collection do
      #payjpでトークン化を行う
      post 'pay', to: 'cards#pay'
      #カード削除
      post 'delete', to: 'cards#delete'
      #カード情報入力
      post 'show', to: 'cards#show'
    end
  end
end