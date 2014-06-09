class SectionsController < ApplicationController

  def create
    Movie.create("title" => params["title"],
                 "year" => params["year"],
                 "poster_url" => params["url"],
                 "director_id" => params["chosen_director_id"]
                 )

    redirect_to "/movies"
  end

end
