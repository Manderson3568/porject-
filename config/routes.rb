Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :abilities, :only => [:show,:index]
  resources :natures, :only => [:index]
  resources :items, :only => [:index]
  resources :attacks, :only => [:show,:index]
  resources :species, :only => [:show,:index]
  resources :pokemon
  resources :users, :only => [:new, :create, :index]
  resources :teams
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end