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
    )
    @actor.save
    render "actor_show.json.jb"
  end

  def update
    @input = params[:id]
    @actor = Actor.find(@input)
    {
      first_name: params[:first_name] || @actor.first_name,
      last_name: params[:last_name] || @actor.last_name,
      known_for: params[:known_for] || @actor.known_for,
    }
    @actor.save
    # render json: { message: "actor updated" }
    render "actor_show.json.jb"
  end

  def destroy
    input = params[:id]
    @actor = Actor.find(input)
    @actor.delete
    render json: { message: "actor deleted" }
  end
end
