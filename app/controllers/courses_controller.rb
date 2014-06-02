class CoursesController < ApplicationController

def create
    Course.create("dept" => params["dept"],
                 "course_no" => params["course_no"],
                 "course_name" => params["course_name"])

    redirect_to "/courses"
  end

end
