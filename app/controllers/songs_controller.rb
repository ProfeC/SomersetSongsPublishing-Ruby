class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :set_album, only: [:show, :edit, :update, :destroy, :create]
  before_action :set_mood, only: [:show, :edit, :update, :destroy, :create]

  # GET /songs
  # GET /songs.json
  def index
    flash[:notice] = ''

    # NOTE: Set the value of songs to "All" by default
    @songs = Song.all

    if params[:q].present?

      # NOTE: Get possible genres.
      @artist_id = Artist.find_by_name(params[:q])
      @artist_songs = ''

      # NOTE: Get possible genres.
      @album_id = Album.find_by_title(params[:q])
      @album_songs = ''

      # NOTE: Get possible genres.
      @genre_id = Genre.find_by_title(params[:q])
      @genre_songs = ''

      # NOTE: Get possible themes.
      @theme_id = Theme.find_by_title(params[:q])
      @theme_songs = ''

      # NOTE: Get possible moods.
      mood_id = Mood.search_by_name(params[:q])
      @mood_songs = Song.search_mood(mood_id)

      #NOTE: Get possible songs
      @songs_list = Song.search(params[:q])

      @songs_searched = (@songs_list + @mood_songs).uniq #+ @genre_songs + @theme_songs


      # Check to see if the array is empty
      if @songs_searched.blank?
        flash[:notice] = ('There are no songs containing the term(s): <em><strong>' + params[:q].to_s + '</strong></em>.').html_safe
      else
        @songs = @songs_searched
      end
    end

    @songs = @songs.order(:title)
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
    @album = Album.find(@song.album.id)
    @artist = Artist.find(@album.artist.id)
    @genres = Genre.joins(:songs).where(songs: {id: @song.id})
    # @moods = Mood.joins(:songs).where(songs: {id: @song.id})
    @themes = Theme.joins(:songs).where(songs: {id: @song.id})
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
    @genres = Genre.joins(:songs).where(songs: {id: @song.id})
    @moods = Mood.joins(:songs).where(songs: {id: @song.id})
    @moodList = Mood.all
    @themes = Theme.joins(:songs).where(songs: {id: @song.id})
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: 'Song was successfully updated.', style: 'success' }
        format.json { render :show, status: :ok, location: @song }
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url, notice: 'Song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    def set_album
      @album = Album.all
    end

    def set_artist
      @artist = Artist.all
    end

    def set_mood
      # @mood = Mood.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:title, :description, :original_release_date, :length, :album_id, :cover_art, :audio)
    end
end
