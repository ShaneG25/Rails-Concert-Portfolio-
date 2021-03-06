Rails.application.routes.draw do
  root 'sessions#home' 

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy' 

  get '/auth/google_oauth2/callback' => 'sessions#google' 

  # get '/search' => 'venues#search', :as => 'search_venue'

  resources :users
  resources :venues do 
    resources :tickets, shallow: true # index, new and show routes only 
  end
  resources :tickets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end 
