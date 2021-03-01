class Api::ActorsController < ApplicationController
  def individual_actor
    @actor = Actor.first
    render "actor.json.jb"
  end

  def choose_actor_segment
    @input = params[:actor]
    @actor = Actor.find(@input)
    render "actor.json.jb"
  end

  def choose_actor_query
    @input = params["my_message"]
    @actor = Actor.find(@input)
    render "actor.json.jb"
  end

  def choose_actor_body
    input = params[:input]
    @actor = Actor.find(input)
    render "actor.json.jb"
  end
end
