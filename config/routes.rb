Rails.application.routes.draw do
# sessions
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

# users
  resources :users
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'


# category
  resources :categories, only: :index

# brand
  resources :brands, only: [:index, :create, :new] do
    resources :instruments, only: [:new]
  end
  get '/brands/instruments', to: 'brands#show', as: 'brand_instruments'
  get '/brands/string',     to: 'brands#string'
  get '/brands/percussion', to: 'brands#percussion'
  get '/brands/keyboard',   to: 'brands#keyboard'

# instruments
  resources :instruments, only: [:index, :new, :create]
  get '/instrument/:id',         to: 'instruments#show', as: 'instruments_show'
  get '/instruments',            to: 'instruments#index'
  get '/instruments/string',     to: 'instruments#string'
  get '/instruments/percussion', to: 'instruments#percussion'
  get '/instruments/keyboard',   to: 'instruments#keyboard'

# reviews 
  resources :reviews

# cart
  resources :carts

end
