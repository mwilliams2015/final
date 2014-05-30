class RatingsController < ApplicationController

def destroy
    rating = Rating.find_by("id" => params["id"])
    rating.delete
    redirect_to "/section"
  end

  # Receive form submitted from /classes/new
  def create
    Rating.create("dept" => params["dept_name"], "course_no" => params["coursenum"], "course_name" => params["course_name"])
    redirect_to "/section"
  end

  # Receive form submitted from /classes/edit
  def update
    rating = Rating.find_by("id" => params["id"])
    rating.update("dept" => params["dept"], "course_no" => params["course_no"], "course_name" => params["course_name"])
    redirect_to "/section"
  end

end
