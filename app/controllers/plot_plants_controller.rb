class PlotPlantsController < ApplicationController
  def create
    @plot_plants = PlotPlant.create!(plot_plants_params)

  private
  def plot_plants_params
    params.permit(:plot_id, :plant_id)
  end
end
