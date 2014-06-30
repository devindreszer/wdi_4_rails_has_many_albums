class SongsController < ApplicationController

  # Get /albums/:album_id/songs
  def index
    @album = Album.find(params[:album_id])
    @songs = @album.songs
  end

  def show
    @song = Song.find(params[:id])
  end

end
