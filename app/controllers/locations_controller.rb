class LocationsController < ApplicationController 
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record

def index
  @locations = Location.all
end

def new
  @location = Location.new
end

def create
  @location = Location.new(location_params)
  if @location.save
    redirect_to @location, notice: "Successfully created..."
  else
    render :new
  end
end

def show
  @pilots = @location.pilots
end

def edit
end

def update
  if @location.update(location_params)
    redirect_to @location, notice: "Successfully edited..."
  else
    render :edit
  end
end

def destroy
  @location.destroy
  redirect_to locations_path
end

private
  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:base, :unit, :country, :state, :oconus, :pascode, :billets)
  end

  def couldnt_find_record
    redirect_to root_url, notice: "That record doesn't exist!"
  end
end
