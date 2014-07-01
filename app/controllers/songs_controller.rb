class SongsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # Run before the actions
  before_action :set_album

  # Get /albums/:album_id/songs
  def index
    @songs = @album.songs
  end

  def show
    @song = @album.songs.find(params[:id])
  end

  def new
    @song = @albums.songs.new
  end

  def create
    @song = @album.songs.new(song_params)
    if @song.save
      redirect_to album_songs_path(@album, @song), notice: "You created a new song."
    else
      render :new
    end
  end

  def edit
    # Get an existing song from an album
    @song = @album.songs.find(params[:id])
  end

  def update
    @song = @album.songs.find(params[:id])
    if @song.update(song_params)
      redirect_to album_songs_path(@album, @song), notice: "You updated a new song."
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_album
    @album = Album.find(params[:album_id])
  end

  # strong params
  def song_params
    params.require(:song).permit(:title, :artist, :duration, :price)
  end

end
