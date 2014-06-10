class SectionsController < ApplicationController

  def create

    Section.create("course_id" => params["course_id"],
                   "professor_id" => params["chosen_professor_id"])
    redirect_to "/courses", :notice => "Thanks for your addition!"

  end

end
