class LocationsController < ApplicationController

    before_filter :find_locations, only: [:show, :edit, :update, :destroy]


    def new
      @locations = Location.new
  end

  def create
    @locations = Location.create locations_params
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
    def find_locations
      @locations = Location.find params[:id]
    end

     def locations_params
    params.require(:location).permit(:city_name)
    end  
end
