class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = set_(Genre)
  end

  def new
    @genre = Genre.new
  end

  def create
    name = params[:genre][:name]

    genre = Genre.create(name: name)
      redirect_to genre
  end

  def edit
    @genre = set_(Genre)
  end

  def update
    genre = set_(Genre)

    genre.update(update_params(:genre, :name))
      redirect_to (genre)
  end

  private

    # def set_(class_name, id)
    #   instance = class_name.find(id)
    # end

end
