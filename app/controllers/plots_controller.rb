class PlotsController < ApplicationController
  def index
    @plots = Plot.all
  end

  def create
    plot = Plot.create(plot_params)
  end

  private
  def plot_params
    params.permit(:number, :size, :direction)
  end
end
