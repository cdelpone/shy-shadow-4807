class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def destroy
    PlotPlant.destroy(params[:id])
    redirect_to plots_path
  end

  private
  def plant_params
    params.permit(:name, :description, :days_to_harvest)
  end
end
