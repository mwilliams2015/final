Final::Application.routes.draw do

 # Specify a custom home page
  get "/" => "professors#index"

  # Resource: Professors

  # --- Create
  get "/professors/new" => 'professors#new'
  post "/professors" => 'professors#create'

  # --- Read
  get "/professors" => 'professors#index'
  get "/professors/:id" => 'professors#show'

  # -- Update
  get "/professors/:id/edit" => 'professors#edit'
  patch "/professors/:id" => 'professors#update'

  # --- Delete
  delete "/professors/:id" => 'professors#destroy'

get "/classes" => "classes/index"

get "/classes/:id" => "classes/show"



end
