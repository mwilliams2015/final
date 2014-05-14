Final::Application.routes.draw do

get "/classes" => "class/index"

get "/classes/:id" => "classes/show"


end
