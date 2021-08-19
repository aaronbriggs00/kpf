class Api::GroupsController < ApplicationController
  def index
    @groups = Group.all.includes(:actors, :images)
    render "index.json.jb", status: :ok
  end
  def show
    @group = Group.find(params[:id])
    render "show.json.jb", status: :ok
  end
  def create
    @group = Group.new(
      name: params[:name],
      debut_date: params[:debut_date]
    )
    if @group.save()
      render "show.json.jb", status: :created
    else
      render json: { errors: @group.errors.full_messages }, status: :bad_request
    end
  end
  def update
    @group = Group.find(params[:id])
    @group.name = params[:name] || @group.name
    @group.debut_date = params[:debut_date] || @group.debut_date
    if @group.save()
      render "show.json.jb", status: :ok
    else
      render json: { errors: @group.errors.full_messages }, status: :bad_request
    end
  end
  def destroy
    Group.find(params[:id]).destroy()
    render json: nil, status: 204
  end
end
