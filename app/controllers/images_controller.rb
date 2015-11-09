class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.create(image_params)
    redirect_to '/'
  end

  def show
    @images = Image.limit(1).order("RANDOM()")
  end

  def edit
  end

  def update
  end

  private

  def image_params
    params.require(:image).permit(:image)
  end

end
