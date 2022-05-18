class PlantsController < ApplicationController

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    # specify to which garden the plant belongs
    @plant.garden = @garden
    # check if item is saved
    if @plant.save
      # redirect to wherever I want if it's properly saved
      redirect_to garden_path(@garden)
    else
      # render the page where the form is at
      render "gardens/show"
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to garden_path(@plant.garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end

end
