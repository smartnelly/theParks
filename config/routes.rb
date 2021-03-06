Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/home' => 'pages#home'
  get '/contact' => 'pages#contact'
  
  resources :users, :only => [:index, :new, :create]
  resources :items
  resources :orders
  resources :categories


  # Login Sessions
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


end
