class Api::MoviesController < ApplicationController
  def index
    @movie = Movie.all
    render "movie_index.json.jb"
  end

  def show
    @input = params[:id]
    @movie = Movie.find(@input)
    render "movie_show.json.jb"
  end

  def create
    @movie = Movie.new(
      id: params[:id],
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english],
    )
    @movie.save
    render "movie_show.json.jb"
  end

  def update
    @input = params[:id]
    @movie = Movie.find(@input)
    {
      id: params[:id] || @movie.id,
      title: params[:title] || @movie.title,
      year: params[:year] || @movie.year,
      plot: params[:plot] || @movie.plot,
      director: params[:director] || @movie.director,
      english: params[:english] || @movie.english,
    }
    @movie.save

    render "movie_show.json.jb"
    #when create, why is english null.. questions to future self
  end

  def destroy
    input = params[:id]
    @movie = Movie.find(input)
    @movie.delete
    render json: { message: "movie deleted" }
  end
end
