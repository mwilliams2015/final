class ProfessorsController < ApplicationController

def create
    Professor.create("pfirst_name" => params["pfirst_name"], "plast_name" => params["plast_name"], "gender" => params["gender"], "photo_url" => params["photo_url"])

    redirect_to "/professors"
  end

def destroy
    professor = Professor.find_by("id" => params["id"])
    professor.delete
    redirect_to "/professors"
  end

def update
    professor = Professor.find_by("id" => params["id"])
    professor.update("pfirst_name" => params["pfirst_name"], "plast_name" => params["plast_name"], "gender" => params["gender"], "photo_url" => params["photo_url"])
    redirect_to "/professors"
  end

end
