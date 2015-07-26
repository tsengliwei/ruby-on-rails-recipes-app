Rails.application.routes.draw do
  resources :recipes do
  	member do
  		post 'like'
  	end
	end

  root 'pages#home'
  
  get '/home', to: 'pages#home'


end
