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
    @song = Song.new
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
  end

  def update
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
