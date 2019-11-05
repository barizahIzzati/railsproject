Rails.application.routes.draw do
  resources :companies
  devise_for :users
  resources :comments
  get 'pages/info'
  resources :products
  root to: redirect('/products')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
