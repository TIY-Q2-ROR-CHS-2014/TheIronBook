class LocationsController < ApplicationController

   before_filter :find_location, only:[:show, :edit, :update, :destroy]

  def new
    @locations = Location.new
  end

  def create
    @locations = Location.create location_params
    redirect_to root_path
  end

  def show
    @courses = @locations.courses
  end

  def edit
  end

  def update
  end

  def destroy
  end

   private

   def  location_params
      params.require(:location).permit(:name)
   end
   def find_location
      @locations = Location.find params[:id]
   end

end
