class SongsController < ApplicationController

  # Run before the actions
  before_action :set_album

  # Get /albums/:album_id/songs
  def index
    @songs = @album.songs
  end

  def show
    @song = @album.songs.find(params[:id])
  end

  private

  def set_album
    @album = Album.find(params[:album_id])
  end

end
