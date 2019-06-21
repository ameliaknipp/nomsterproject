class PhotosController < ApplicationController

  #  def index
  #  @photos = Photo.all
  #  @photos = Photo.find(params[:id])
 # end

  #def create
 #   @photos = Photo.new
  #end

  #def new
  #  @photo = Photo.new
  #end

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params)
    redirect_to place_path(@place)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end

end
