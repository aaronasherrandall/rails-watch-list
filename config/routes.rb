Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # use resources to write a route for each of the 7 CRUD actions
  resources :lists, only: [:index, :show, :new, :create]
  resources :movies, only: [:show]
end
