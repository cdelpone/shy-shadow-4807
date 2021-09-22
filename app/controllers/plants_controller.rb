class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  private
  def plant_params
    params.permit(:name, :description, :days_to_harvest)
  end
end
