class Api::ActorsController < ApplicationController
  def individual_actor
    @actor = Actor.first
    render "actor.json.jb"
  end

  def choose_actor
    @input = params[:actor]
    @actor = Actor.find(@input)
    render "actor.json.jb"
  end
end
