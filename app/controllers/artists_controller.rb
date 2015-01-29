class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params.require(:artist).permit(:name, :stage, :image_url))

    if @artist.save
      redirect_to '/artists'
    else
      render :new
    end
  end
end