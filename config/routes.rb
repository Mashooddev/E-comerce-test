Rails.application.routes.draw do
  root 'homes#index'

  resources :items, only: [:index, :show]
  resources :carts, only: [:index, :create] do
    resources :cart_items, only: [:index, :create, :update, :destroy]
    post 'checkout', on: :member
  end
  resources :orders, only: [:index, :show, :create]
end