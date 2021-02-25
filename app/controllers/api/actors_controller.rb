class Api::ActorsController < ApplicationController
  def individual_actor
    @actor = Actor.first
    render "actor.json.jb"
  end

  def repeat
  end
end
