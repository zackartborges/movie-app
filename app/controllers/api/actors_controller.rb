class Api::ActorsController < ApplicationController
  group :development, :test do
    gem 'ffaker'
  end
  
  end
  def index
    @actor = Actor.order(age: :desc)
    render "actor_index.json.jb"
  end

  def show
    @input = params[:id]
    @actor = Actor.find(@input)
    render "actor_show.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],

    )
    if @actor.save
      render "actor_show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: 406
    end
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age

    if @actor.save
      render "actor_show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: 406
    end
  end

  def destroy
    input = params[:id]
    @actor = Actor.find(input)
    @actor.delete
    render json: { message: "actor deleted" }
  end

end
