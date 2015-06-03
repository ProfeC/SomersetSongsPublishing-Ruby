class SongsController < ApplicationController
  def index
    @songs  = Song.sorted_by_title
  end

  def show
    @song = Song.find(params[:id])
    # @album = Album.find(params[:id])
    @genre_ids = @song.genre_ids
  end

  def new
    @song = Song.new
    @albums = Album.order('title ASC')
    @artists = Artist.order('name ASC')
  end

  def create
    # Instantiate a new object
    @song = Song.new(song_params)
    @albums = Album.order('title ASC')
    @artists = Artist.order('name ASC')

    # Save the object
    if @song.save
      # If save succeeds, redirect
      # flash[:notice] = 'song created successfully'
      # redirect_to(:action => 'index')
    # else
    #   # If save fails display the form
    #   render('new')
    end
  end

  def edit
    @song = Song.find(params[:id])
    @artists = Artist.order('name ASC')
    @albums = Album.order('title ASC')
    @genres = Genre.order('name ASC')
  end

  def update
    # Find an existing object to use for its form parameters
    @song = Song.find(params[:id])
    @artists = Artist.order('name ASC')
    @albums = Album.order('title ASC')
    @genres = Genre.order('name ASC')

    # Update the object
    if @song.update_attributes(song_params)
      # If update succeeds, redirect
      flash[:notice] = 'song "[:song.title]" updated successfully'
      redirect_to(:action => 'show', :id => @song.id)
    else
      # If update fails display the form
      render('edit')
    end
  end

  def delete
    @song = Song.find(params[:id])
  end

  def destroy
    song = Song.find(params[:id]).destroy
    # flash[:notice] = 'song "#{song.title}" deleted successfully'
    # redirect_to(:action => 'index')
  end

  def upload
    uploaded_io = params[:song][:file_uri]
    File.open(Rails.root.join('public', 'media', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end

  private

    def song_params
      # Same as using "params[:song]", except that it:
      # - raises an error if :song is not present
      # - allows listed attributes to be mass-assigned
      params.require(:song).permit(
        :title,
        :description,
        :original_release_date,
        :permalink,
        :artist_id,
        :album_id,
        :file_uri,
        :theme,
        :tag,
        :length,
        :genre_id
      )
    end
end
