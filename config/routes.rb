Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :abilities, :only => [:show,:edit,:index]
  resources :natures, :only => [:show,:edit,:index]
  resources :items, :only => [:show,:edit,:index]
  resources :attacks, :only => [:show,:edit,:index]
  resources :pokemons
  resources :users, :only => [:new, :create, :index]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end