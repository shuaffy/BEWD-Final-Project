class PaintingsController < ApplicationController
  def index
    @paintings = params[:q] ? Painting.search_for(params[:q]) : Painting.all
  end

  def new
    @painting = Painting.new
    @artists = Artist.all
    @museums = Museum.all
  end

  def create
    safe_painting_params = params.require( :painting).permit(:artist_id, :museum_id, :title, :museum, :description, :image)
    @painting = Painting.new safe_painting_params

    if @painting.save
      redirect_to paintings_path
    else
      render :new
    end
  end
end