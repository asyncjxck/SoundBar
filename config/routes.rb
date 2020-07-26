Rails.application.routes.draw do
# sessions
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

# users
  resources :users
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  # get '/users/:id', to: 'users#show', as: 'users'


# category
  resources :categories, only: :index

# brand
  resources :brands, only: [:index, :create, :new] do
    resources :instruments, only: [:new]
  end
  get '/brands/:id/instruments', to: 'brands#show', as: 'brand_instruments'
  get '/brands/string',     to: 'brands#string'
  get '/brands/percussion', to: 'brands#percussion'
  get '/brands/keyboard',   to: 'brands#keyboard'

# instruments
  resources :instruments, only: [:index, :new, :create] do
      resources :reviews, only: [:new, :create]
  end
  get '/instrument/:id',         to: 'instruments#show', as: 'instruments_show'
  get '/instruments',            to: 'instruments#index'
  get '/instruments/string',     to: 'instruments#string'
  get '/instruments/percussion', to: 'instruments#percussion'
  get '/instruments/keyboard',   to: 'instruments#keyboard'

# reviews 
  resources :reviews, only: [:new, :create, :index]

# cart
  resources :carts

end
