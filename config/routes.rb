Rails.application.routes.draw do
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
  resources :brands, only: [:index, :create, :new] do
    resources :instruments, only: [:index, :show, :create, :new]
  end
# instruments
  resources :instruments, only: [:create]
  get '/instruments', to: 'instruments#index'
  get '/instruments/new', to: 'instruments#new'
  post '/instruments', to: 'instruments#create'
# reviews 
  resources :reviews
end
