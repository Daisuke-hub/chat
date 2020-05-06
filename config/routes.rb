Rails.application.routes.draw do
  devise_for :users
  
  # get 'users/show'
  # get 'users/index'
  # ここを編集する
  resources :users, only: [:show, :index] do
    resources :rooms, only: [:create]
  end

  # root 'rooms#show'
  resources :rooms, only: [:show]

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end