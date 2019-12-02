Rails.application.routes.draw do
  get '/listings', to: 'listings#index', as: 'listings'
  get '/listings/new', to: 'listings#new', as: 'new_listing'
  get '/listings/:id', to: 'listings#show', as: 'listing'
  post '/listings', to: 'listings#create'
  get '/listings/:id/edit', to: 'listings#edit', as: 'edit_listing'
  patch '/listings/:id', to: 'listings#update'
  delete '/listings/:id', to: 'listings#delete' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
