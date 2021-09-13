class Api::EventsController < ApplicationController
  def index
    @events = Event.all.includes(:actors, :images)
    if params[:slim] == true
      render "slim_index.json.jb", status: :ok
    else
      render "index.json.jb", status: :ok
    end
  end
  def show
    @event = Event.find(params[:id])
    render "show.json.jb", status: :ok
  end
  def create
    @event = Event.new(
      title: params[:title],
      text: params[:text],
      date: params[:date],
      location_id: params[:location_id],
    )
    if @event.save()
      render "show.json.jb", status: :created
    else
      render json: { errors: @event.errors.full_messages }, status: :bad_request
    end
  end
  def update
    @event = Event.find(params[:id])
    @event.title = params[:title] || @event.title
    @event.text = params[:text] || @event.text
    @event.date = params[:date] || @event.date
    @event.location_id = params[:location_id] || @event.location_id
    if @event.save()
      render "show.json.jb", status: :ok
    else
      render json: { errors: @event.errors.full_messages }, status: :bad_request
    end
  end
  def destroy
    Event.find(params[:id]).destroy()
    render json: nil, status: 204
  end
end
