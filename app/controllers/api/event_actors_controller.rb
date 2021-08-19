class Api::EventActorsController < ApplicationController
  def create
    if EventActor.search(params[:event_id], params[:actor_id]) == []
      event = EventActor.new(
        event_id: params[:event_id],
        actor_id: params[:actor_id]
      )
      if event.save
        render json: {message: "event_actor association created successfully!"}
      else
        render json: { errors: @group.errors.full_messages }, status: :bad_request
      end
    else 
      render json: {message: "association already exists"}, status: :bad_request
    end
  end
  def destroy
    EventActor.search(params[:event_id], params[:actor_id]).destroy()
  end
end
