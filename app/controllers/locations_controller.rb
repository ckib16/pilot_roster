class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

def index
  @locations = Location.all
end

def new

end

def create
  #code
end

def show
  #code
end

def edit
  #code
end

def update
  #code
end

def destroy
  #code
end

private
  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:base, :unit, :country, :state, :oconus, :pascode, :billets)
  end
end
