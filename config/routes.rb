Rails.application.routes.draw do
  resources :recipes do
  	member do
  		post 'like'
  	end
	end

  root 'pages#home'
  
  get '/home', to: 'pages#home'

  resources :chefs, except: [:new]

  get '/register', to: 'chefs#new'

  get '/login', to: 'logins#new'
  post '/login', to: 'logins#create'
  get '/logout', to: 'logins#destroy'

  resources :styles, only: [:new, :create, :show]
  resources :ingredients, only: [:new, :create, :show]
end
