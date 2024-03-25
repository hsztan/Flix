class ReviewsController < ApplicationController
  before_action :set_movie

  def index
    @reviews = @movie.reviews
  end

  def new
    @review = @movie.reviews.new
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
