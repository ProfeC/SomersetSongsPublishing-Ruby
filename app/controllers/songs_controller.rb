class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :set_album, only: [:show, :edit, :update, :destroy, :create]
  before_action :set_mood, only: [:show, :edit, :update, :destroy, :create]

  def filter
    if params[:moods].present?
      m = params[:moods].join(",")
      @songs = Song.joins(:moods).where("mood_id IN (?)", m)
    end

    render "index"
  end

  # GET /songs
  # GET /songs.json
  def index

    # NOTE: Set the value of songs to "All" by default
    # @songs = Song.all

    if params[:q].present?

      # # NOTE: Get possible artists.
      # artist_id = Artist.search_by_name(params[:q])
      # if artist_id.present?
      #   artist_songs = Artist.search_by_id(artist_id)
      # else
        artist_songs = []
      # end

      # # NOTE: Get possible albums.
      # album_id = Album.search_by_name(params[:q])
      # # album_songs = Song.search_album(album_id)

      # if album_id.present?
      #   album_songs = Album.search_by_id(album_id)
      # else
        album_songs = []
      # end

      # NOTE: Get possible genres.
      genre_id = Genre.search_by_name(params[:q])
      genre_songs = Song.search_genre(genre_id)

      # NOTE: Get possible moods.
      mood_id = Mood.search_by_name(params[:q])
      mood_songs = Song.search_mood(mood_id)

      # NOTE: Get possible themes.
      theme_id = Theme.search_by_name(params[:q])
      theme_songs = Song.search_theme(theme_id)

      #NOTE: Get possible songs
      songs_list = Song.search(params[:q])

      @songs_searched = (songs_list + mood_songs + theme_songs + genre_songs + album_songs + artist_songs).uniq


      # Check to see if the array is empty
      if @songs_searched.blank?
        flash[:warning] = ('There are no songs containing the term(s): <em><strong>' + params[:q].to_s + '</strong></em>.').html_safe
      else
        @songs = @songs_searched
      end

      # Discard the flash notice
      flash.discard
    end

    # NOTE: If nothing came back from the search, show ALL songs
    if !@songs.present?
      @moods = Mood.sorted
      @songs = Song.all.order(:title)
      @themes = Theme.all
    end

  end

  # GET /songs/1
  # GET /songs/1.json
  def show

    @album = Album.find(@song.album.id)
    @artist = Artist.find(@album.artist.id)
    @genres = Genre.joins(:songs).where(songs: {id: @song.id})
    @moods = Mood.joins(:songs).where(songs: {id: @song.id})
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
