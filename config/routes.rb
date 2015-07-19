Rails.application.routes.draw do
  get 'pages/home'

  root 'pages#home'
  
  get '/home', to: 'pages#home'
end
