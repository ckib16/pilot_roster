class PilotsController < ApplicationController
  before_action :set_pilot, only: [:show, :edit, :update, :destroy]

  def index
    @pilots = Pilot.all
  end

  def new
    @pilot = Pilot.new
  end

  def create
    @pilot = Pilot.new
    @location = location.find(params[:id])
    if @pilot.save
      redirect_to @pilot, :notice "Successfully created..."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @pilot.update(pilot_params)
      redirect_to @pilot, notice: "Successfully edited..."
    else
      render :edit
    end
  end

  def destroy
    @pilot.destroy
    redirect_to pilots_path
  end

private
  def set_pilot
    @pilot = Pilot.find(params[:id])
  end

  def pilot_params
    params.require(:pilot).permit(:name, :rank, :experienced, :hours, :qualification, :commision_date, :adsc)
  end

end
