class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update]
  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.new(movie_params)
    if movie.save
      redirect_to movies_path
    else
      render new_movie_path
    end
  end

  def edit
  end

  def update
    @movie.update(movie_params)
    redirect_to @movie
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to movies_path, status: :see_other
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross, :director, :duration, :image_file_name)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
