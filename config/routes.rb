Final::Application.routes.draw do

get "/classes" => "classes/index"

get "/classes/:id" => "classes/show"

get "/professors" => "professors/index"

get "/professors/:id" => "professors/show"


end
