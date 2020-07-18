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
    resources :instruments, only: [:show, :new]
  end
# instruments
  resources :instruments, only: [:index, :new, :create, :show]
# reviews 
  resources :reviews
end
