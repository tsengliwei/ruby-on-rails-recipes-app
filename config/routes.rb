Rails.application.routes.draw do
  resources :recipes

  root 'pages#home'
  
  get '/home', to: 'pages#home'
end
