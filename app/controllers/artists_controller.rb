class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = set_(Artist)
    # @songs = to_array(@artist.songs)
  end

  def new
    @artist = Artist.new
  end

  def create
    name = params[:artist][:name]
    bio = params[:artist][:bio]

    artist = Artist.create(name: name, bio: bio)
    redirect_to (artist_path(artist))
  end

  def edit
    @artist = set_(Artist)

  end

  def update
    artist = set_(Artist)
    artist.update(update_params(:artist, :name, :bio))
      redirect_to artist_path(artist)
  end

private


  # def to_a (object)
  #   if object.length <= 1 then [object]
  # end

end
