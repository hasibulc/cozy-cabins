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
  delete '/listings/:id', to: 'users#delete_listing' 

  # Users Routes
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id', to: 'users#show', as: 'user'
  post '/users', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#delete' 

  # User's Wist List
  get 'users/:id/wish_list', to: 'wish_lists#wish_list', as: 'users_wish_list'
  post 'users/:id/wish_list', to: 'wish_list_items#add_to_wish_list', as: 'add_to_wish_list'
  delete 'users/:id/wish_list', to: 'wish_list_items#delete_wish_list_item'
  # User's Listings
  get 'users/:id/listings', to: 'users#my_listings', as: 'user_listings'

  # Wish List Routes
  # get '/wish_lists/:id', to: 'wish_lists#show', as: 'wish_list'
  # post '/wish_lists', to: 'wish_lists#create'
  # get '/wish_lists/:id/edit', to: 'wish_lists#edit', as: 'edit_wish_list'
  # patch '/wish_lists/:id', to: 'wish_lists#update'
  # delete '/wish_lists/:id', to: 'wish_lists#delete' 

end
