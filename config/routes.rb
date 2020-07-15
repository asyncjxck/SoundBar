Rails.application.routes.draw do
  resources :carts
# sessions
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
# users
  resources :users
# category
  resources :categories, only: :index
# brand
  resources :brands, only: [:index, :show, :create, :new] do
    resources :instruments, only: [:index, :show, :create, :new]
  end
# instruments
  resources :instruments, only: [:create, :show]
  get '/instruments', to: 'instruments#index'
  get '/instruments/new', to: 'instruments#new'
  post '/instruments', to: 'instruments#create'
# reviews 
  resources :reviews
end
