class MoviesController < ApplicationController
  def index
    @movies = ["Iron Man", "Super Man"]
  end
end
