class Api::MoviesController < ApplicationController
  def index
    @movie = Movie.all
    render "movie.json.jb"
  end

  def show
    @input = params[:id]
    @movie = Movie.find(@input)
    render "movie.json.jb"
  end

  def create
    @movie = Movie.new(
      id: params[:id],
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
    )
    @movie.save
    render "movie.json.jb"
  end

  def update
    @input = params[:id]
    @movie = Movie.find(@input)
    {
      id: params[:id] || @movie.id,
      title: params[:title] || @movie.title,
      year: params[:year] || @movie.year,
      plot: params[:plot] || @movie.plot,
    }
    @movie.save
    render json: { message: "movie updated" }
  end

  def destroy
    input = params[:id]
    @movie = Movie.find(input)
    @movie.delete
    render json: { message: "movie deleted" }
  end
end
