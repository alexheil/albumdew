class Artists::ArtistsController < ApplicationController

  def show
    @artist = Artist.friendly.find(params[:id])
  end

end