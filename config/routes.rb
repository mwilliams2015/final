Final::Application.routes.draw do

 # Specify a custom home page
   get "/" => "courses#index"

  # Resource: Professors

  # --- Read
  get "/professors" => 'professors#index'
  get "/professors/:id" => 'professors#courses'


  get "/courses" => "courses#index"
  get "/courses/:id" => "courses#professors"

  get "/section/:id" => "section#show"

  # --- Create
  get "/rating/new" => 'rating#new'
  post "/rating" => 'rating#create'

  # --- Read
  get "/rating" => 'rating#index'
  get "/rating/:id" => 'rating#show'

  # -- Update
  get "/rating/:id/edit" => 'rating#edit'
  patch "/rating/:id" => 'rating#update'

  # --- Delete
  delete "/rating/:id" => 'rating#destroy'

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'


  # Sign-In and Sign-Out

  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

end
