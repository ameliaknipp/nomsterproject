class PlacesController < ApplicationController

  def index
    @place = Place.paginate(:page => params[:page], :per_page => 1)

  end

  def new
    @place = Place.new
  end

end
