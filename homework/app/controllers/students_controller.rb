class StudentsController < ApplicationController

  before_filter :find_location
  before_filter :find_course
  before_filter :find_student, only:[:show, :edit, :update, :destroy]
  
  def new
    @student = Student.new
  end

  def create
    @student = @course.students.create student_params
    redirect_to location_course_path(@location, @course)
  end

  def show
    # @student = @course.students
  end

  def edit
    # @student = @course.student
  end

  def update
    @student.update_attributes student_params
    redirect_to location_course_path(@location, @course)
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
        :social_3,
        :location_id)
    end

    def find_location
      @location = Location.find params[:location_id]
    end
   
    def find_course
      @course = Course.find params[:course_id]
    end

    def find_student
      @student = Student.find params[:id]
    end
end
