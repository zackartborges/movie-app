class Api::ActorsController < ApplicationController
  def index
    @actor = Actor.all
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
    @actor.save
    render "actor_show.json.jb"
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age

    @actor.save
    render "actor_show.json.jb"
  end

  def destroy
    input = params[:id]
    @actor = Actor.find(input)
    @actor.delete
    render json: { message: "actor deleted" }
  end
end
