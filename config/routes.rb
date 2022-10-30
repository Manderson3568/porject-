Rails.application.routes.draw do
  get '/' => 'pages#home'
  get '/abilities/seed' => 'abilities#seed'
  post '/abilities/seed' => 'abilities#upload'
  resources :abilities

  resources :natures
  resources :items
  resources :attacks

end
