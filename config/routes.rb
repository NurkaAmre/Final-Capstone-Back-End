Rails.application.routes.draw do
  devise_for :users
  # resources :books
  # resources :reservations
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'api/v1/books', to: 'books#index'
  post 'api/v1/books', to: 'books#create'
  delete 'api/v1/books/:id', to: 'books#destroy'

  post 'api/v1/login', to: 'users#login'
  post 'api/v1/signup', to: 'users#signup'
  delete 'api/v1/reservation/:id', to: 'reservations#destroy'
  post 'api/v1/reservation/', to: 'reservations#create'

end
