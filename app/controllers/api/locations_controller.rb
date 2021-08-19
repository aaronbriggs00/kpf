class Api::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render "index.json.jb", status: :ok
  end
  def show
    @location = Location.find(params[:id])
    render "show.json.jb", status: :ok
  end
  def create
    @location = Location.create(
      group_id: params[:group_id],
      title: params[:title],
      description: params[:description],
      is_public: params[:is_public]
    )
    if @location.save
      render "show.json.jb", status: :created
    else
      render json: { errors: @locaiton.errors.full_messages }, status: :bad_request
    end
  end
  def update
    @location = Location.find(params[:id])
    @location.group_id = params[:group_id] || @location.group_id
    @location.title = params[:title] || @location.title
    @location.description = params[:description] || @location.description
    @location.is_public = params[:is_public] || @location.is_public
    if @location.save
      render "show.json.jb", status: :ok
    else
      render json: { errors: @location.errors.full_messages }, status: :bad_request
    end
  end
  def destroy
    Location.find(params[:id]).destroy()
    render json: nil, status: 204
  end
end
