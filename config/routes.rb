Rails.application.routes.draw do
  root 'posts#index'
  resources :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
