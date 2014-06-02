class RatingsController < ApplicationController

  def create
    Rating.create("section_id" => params["id"],
                  "rating" => params["rating"],
                  "feedback" => params["feedback"])
    redirect_to "/sections/#{params["id"]}", :notice => "Thanks for your review!"

  end


end
