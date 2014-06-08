class RatingsController < ApplicationController

def create
    Rating.create("section_id" => params["section_id"],
                  "user_id" => cookies["user_id"],
                  "rating" => params["rating"],
                  "feedback" => params["feedback"],
                  "date" => Date.today)
    redirect_to "/sections/#{params["section_id"]}", :notice => "Thanks for your review!"
  end


end
