Rails.application.routes.draw do
  resources :recipes
  get 'pages/home'


  root 'pages#home'
  
  get '/home', to: 'pages#home'
end
