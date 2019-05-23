class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    # to create a new instance of PlantTag
    @plant_tag = PlantTag.new
    # find the associated Tag
    @tag = Tag.find(params[:plant_tag][:tag])
    # find the associated Plant
    @plant = Plant.find(params[:plant_id])
    # attach the plant and tag
    @plant_tag.plant = @plant
    @plant_tag.tag = @tag
    # save to my DB
    if @plant_tag.save
      redirect_to garden_path(@plant.garden)
    else
    # handle in case of errors
      render :new
    end
  end
end
