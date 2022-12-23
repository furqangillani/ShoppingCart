Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'cart/show'
  get "create", to: "checkouts#create"
  get "checkout", to: "checkouts#show"
  get "checkout/success", to: "checkouts#success"
  get "billing", to: "billing#show"
  resources :categories
  resources :products
  resources :addresses
  devise_for :admins
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get "index", to: "header#index"
  get "product_page", to: "header#product_page"
end
