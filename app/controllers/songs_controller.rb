class SongsController < ApplicationController


  def index
    @songs = Song.all
  end

  def show
    @song = set_(Song)
    @artists = to_array(@song.artist)
    @genres = to_array(@song.genre)

  end

  def new
    @song = Song.new
    @artists = Artist.get_IDs
    @genres = Genre.get_IDs
  end

  def create
    name = params[:song][:name]
    artist_id = params[:song][:artist_id]
    genre_id = params[:song][:genre_id]


    song = Song.create(name: name, genre_id: genre_id, artist_id: artist_id)
      redirect_to song
  end

  def edit
    @song = set_(Song)
  end

  def update
    song = set_(Song)

    song.update(update_params(:song, :name))
      redirect_to song
  end

  private

    # def set_(class_name, id)
    #   instance = class_name.find(id)
    # end

end
