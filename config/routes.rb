Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  # Listings Routes
  get '/listings', to: 'listings#index', as: 'listings'
  get '/listings/new', to: 'listings#new', as: 'new_listing'
  get '/listings/:id', to: 'listings#show', as: 'listing'
  post '/listings', to: 'listings#create'
  get '/listings/:id/edit', to: 'listings#edit', as: 'edit_listing'
  patch '/listings/:id', to: 'listings#update'
  delete '/listings/:id', to: 'listings#delete' 

  # Users Routes
  get '/users', to: 'users#index', as: 'users' #get rid of this when we deploy
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id', to: 'users#show', as: 'user'
  post '/users', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#delete' 
  # User's Wist List
  get 'users/:id/wish_list', to: 'users#wish_list', as: 'users_wish_list'
  post 'users/:id/wish_list', to: 'users#add_to_wish_list', as: 'add_to_wish_list'
  # User's Listings
  # get 'users/:id/listings'

  # Wish List Routes
  get '/wish_lists/:id', to: 'wish_lists#show', as: 'wish_list'
  post '/wish_lists', to: 'wish_lists#create'
  get '/wish_lists/:id/edit', to: 'wish_lists#edit', as: 'edit_wish_list'
  patch '/wish_lists/:id', to: 'wish_lists#update'
  delete '/wish_lists/:id', to: 'wish_lists#delete' 


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
