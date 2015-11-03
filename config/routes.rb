Rails.application.routes.draw do
  
  get 'welcome/index'
  root 'welcome#index'
  match 'auth/:provider/callback', to: 'sessions#create',:via => [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout',:via => [:get]
  
  get 'welcome/admin' => 'welcome#admin'

  get 'products/index' => 'products#index'
  get 'products/new' => 'products#new'
  
  match 'like', to: 'likes#like', via: :post
  match 'unlike', to: 'likes#unlike', via: :post

  resources :products

end
