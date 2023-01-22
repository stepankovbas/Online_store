Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  # get 'store/index'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  #root "products#index"
  root 'store#index', as: 'store_index'

  resources :products do
    get :who_bought, on: :member
  end
end
