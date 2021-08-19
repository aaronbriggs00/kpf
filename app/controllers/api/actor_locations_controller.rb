class Api::ActorLocationsController < ApplicationController
  def create
    if ActorLocation.search(params[:location_id], params[:actor_id]) == []
      actor_location = ActorLocation.new(
        location_id: params[:location_id],
        actor_id: params[:actor_id]
      )
      if actor_location.save
        render json: {message: "actor_location association created successfully!"}
      else
        render json: { errors: actor_location.errors.full_messages }, status: :bad_request
      end
    else 
      render json: {message: "association already exists"}, status: :bad_request
    end
  end
  def destroy
    ActorLocation.search(params[:location_id], params[:actor_id]).destroy()
  end
end
