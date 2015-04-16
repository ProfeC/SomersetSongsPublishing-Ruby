class ArtistsController < ApplicationController
  def index
    @artists  = Artist.sorted
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end
