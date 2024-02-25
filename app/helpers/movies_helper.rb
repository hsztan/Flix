module MoviesHelper
  def total_gross(movie)
    if movie.flop?
      content_tag(:strong, "Flop!")
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end

  def year_of(movie)
    movie.released_on&.year || "Unknown"
  end
end
