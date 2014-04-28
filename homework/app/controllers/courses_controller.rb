class CoursesController < ApplicationController
  before_filter :find_location
  before_filter :find_course, only:[:show, :edit, :update, :destroy]

  def new
    @course = Course.new
  end

  def create
    @course = @location.courses.create course_params
    redirect_to location_path(@location)
  end

  def show
    @student = @course.students
    #custom query
  end

  def edit
  end

  def update
  end

  def destroy
  end

   private
   def find_location
      @location = Location.find params[:location_id]
   end
   def course_params
      params.require(:course).permit(:name)
   end
   def find_course
      @course = @location.courses.find params[:id]
   end
   
end
