Rails.application.routes.draw do
# sessions
  get '/',       to: 'sessions#welcome'
  get '/login',  to: 'sessions#new'
  post '/login', to: 'sessions#create'

# users
  resources :users
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'


# category
  resources :categories, only: :index

# brand
  resources :brands, only: [:index, :create, :new] do
    resources :instruments, only: [:show, :new]
  end
  get 'brands/instruments', to: 'brands#show', as: 'brand_instruments'
  get '/brands/string',     to: 'brands#string'
  get '/brands/percussion', to: 'brands#percussion'
  get '/brands/keyboard',   to: 'brands#keyboard'

# instruments
  resources :instruments, only: [:index, :new, :create, :show]

# reviews 
  resources :reviews

# cart
  resources :carts

end
