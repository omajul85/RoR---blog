Rails.application.routes.draw do
  devise_for :authors
  resources :articles do
  	resources :comments
  end
  resources :tags
  
  root to: 'articles#index'
end
