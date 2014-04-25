class StudentsController < ApplicationController

  before_filter :find_location
  before_filter :find_course
  before_filter :find_student, only:[:show, :edit, :update, :destroy]
  
  def new
    @student = Student.new
  end

  def create
    @student = @course.students.create student_params
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

   private
    def student_params
      params.require(:student).permit(:name,
        :email,
        :phone,
        :bio,
        :social_1,
        :social_2,
        :social_3)
    end

    def find_location
      @location = Location.find params[:location_id]
    end
   
    def find_course
      @course = @location.courses.find params[:course_id]
    end

    def find_student
      @student = @courses.students.find params[:id]
    end
end
