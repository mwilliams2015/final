Final::Application.routes.draw do

 # Specify a custom home page
  get "/" => "home#show"

  # Resource: Professors

# --- Create
  get "/professors/new" => 'professors#new'
  post "/professors" => 'professors#create'

  # --- Read
  get "/professors" => 'professors#index'
  get "/professors/:id" => 'professors#courses'

  # -- Update
  get "/professors/:id/edit" => 'professors#edit'
  patch "/professors/:id" => 'professors#update'

  # --- Delete
  delete "/professors/:id" => 'professors#destroy'


# Resource: Courses

  # --- Create
  get "/courses/new" => 'courses#new'
  post "/courses" => 'courses#create'

  # --- Read
  get "/courses" => 'courses#index'
  get "/courses/:id" => 'courses#professors'

  # -- Update
  get "/courses/:id/edit" => 'courses#edit'
  patch "/courses/:id" => 'courses#update'

  # --- Delete
  delete "/courses/:id" => 'courses#destroy'

  # Resource: Sections
  # --- Create
  get "/sections/:id/newprof" => 'sections#newprof'
  post "/sections/:id/newprofessor" => 'sections#create'

  # --- Read
  get "/sections" => 'sections#index'
  get "/sections/:id" => 'sections#show'

  # --- Read
  post "/sections" => 'sections#create'
  get "/sections/:id" => 'sections#show'

  # Resource: Ratings

  # --- Create
  get "/ratings/new" => 'ratings#new'
  post "/ratings" => 'ratings#create'

  # --- Read
  get "/ratings" => 'ratings#index'
  get "/ratings/:id" => 'ratings#show'

  # -- Update
  get "/ratings/:id/edit" => 'ratings#edit'
  patch "/ratings/:id" => 'ratings#update'

  # --- Delete
  delete "/ratings/:id" => 'ratings#destroy'

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


  # --- Sign-In and Sign-Out

  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

end
