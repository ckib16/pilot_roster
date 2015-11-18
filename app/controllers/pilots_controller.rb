class PilotsController < ApplicationController

  def index
    @pilots = Pilot.all
  end

  def new
    #code
  end

  def create
    #code
  end

  def show
    @pilot = Pilot.find(params[:id])
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
end
