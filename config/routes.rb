Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show], param: :user_name
       resources :users, only: [:index] do
      resources :reservations, only: [:index, :create, :destroy]
       end
      resources :books, only: [:index, :show, :new, :create, :destroy]
        resources :reservations , only: [:create]
    end
  end
end