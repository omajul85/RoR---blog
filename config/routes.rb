Rails.application.routes.draw do
  devise_for :authors
  resources :articles do
  	resources :comments
  	collection do
	    get 'popular'
	  end
  end
  resources :tags
  root to: 'articles#index'
end
