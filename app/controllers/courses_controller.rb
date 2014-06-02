class CoursesController < ApplicationController

def create
    Course.create("dept" => params["dept"],
                 "course_no" => params["course_no"],
                 "course_name" => params["course_name"])

    redirect_to "/courses"
  end

def destroy
    course = Course.find_by("id" => params["id"])
    course.delete
    redirect_to "/courses"
  end

end
