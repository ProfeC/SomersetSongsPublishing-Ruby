class ArtistsController < ApplicationController
  # layout "hosting"

  def index
    @artists  = Artist.sorted
  end

  def show
    @artist = Artist.find(params[:id])
  end

  # Show artist by name
  def show_by_name
    @artist = Artist.find_by(name: params[:name])
    @updated = @artist.updated_at
    @created = @artist.created_at
    render :show
  end

  def new
    @artist = Artist.new
  end

  def create
    # Instantiate a new object
    @artist = Artist.new(artist_params)

    # Save the object
    if @artist.save
      # If save succeeds, redirect
      flash[:notice] = 'Artist created successfully'
      redirect_to(:action => 'index')
    else
      # If save fails display the form
      render('new')
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    # Find an existing object to use for its form parameters
    @artist = Artist.find(params[:id])

    # Update the object
    if @artist.update_attributes(artist_params)
      # If update succeeds, redirect
      flash[:notice] = 'Artist "#{artist.name}" updated successfully'
      redirect_to(:action => 'show', :id => @artist.id)
    else
      # If update fails display the form
      render('edit')
    end
  end

  def delete
    @artist = Artist.find(params[:id])
  end

  def destroy
    artist = Artist.find(params[:id]).destroy
    flash[:notice] = 'Artist "#{artist.name}" deleted successfully'
    redirect_to(:action => 'index')
  end

  private

    def artist_params
      # Same as using "params[:artist]", except that it:
      # - raises an error if :artist is not present
      # - allows listed attributes to be mass-assigned
      params.require(:artist).permit(:name, :description)
    end
end
