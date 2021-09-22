class PlotPlantsController < ApplicationController
  def create
    plot_plants = PlotPlant.create!(plot_plants_params)
  end

  def destroy
    PlotPlant.find(params[:plant_id]).destroy
    redirect_to plots_path
  end

  private
  def plot_plants_params
    params.permit(:plot_id, :plant_id)
  end
end
