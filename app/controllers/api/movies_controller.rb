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
    @movie = Movie.find_by(id: params[:id])
    @movie.id = params[:id] || @movie.id
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    #sets happy/sad path
    if @movie.save
      render "movie_show.json.jb"
    else render json: { errors: @movie.errors.full_messages }, status: 406     end
    #when create, why is english null.. questions to future self
  end

  def destroy
    input = params[:id]
    @movie = Movie.find(input)
    @movie.delete
    render json: { message: "movie deleted" }
  end
end
