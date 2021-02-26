class Api::MoviesController < ApplicationController
  def all_movie
    @movie = Movie.all
    render "movie.json.jb"
  end

  def individual_movie
    @movie = Movie.first
    render "movie.json.jb"
  end
end
