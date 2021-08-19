class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all.includes(:events, :images)
    render "index.json.jb", status: :ok
  end
  def show
    @actor = Actor.find(params[:id])
    render "show.json.jb", status: :ok
  end
  def create
    @actor = Actor.create(
      name: params[:name],
      group_id: params[:group_id],
      stat0: params[:stat0],
      stat1: params[:stat1],
      stat2: params[:stat2],
      stat3: params[:stat3],
      stat4: params[:stat4],
      stat5: params[:stat5],
      stat6: params[:stat6],
      stat7: params[:stat7],
      stat8: params[:stat8],
      stat9: params[:stat9],
    )
    if @actor.save
      render "show.json.jb", status: :created
    else
      render json: { errors: @actor.errors.full_messages }, status: :bad_request
    end
  end
  def update
    @actor = Actor.find(params[:id])
    @actor.name = params[:name] || @actor.name
    @actor.group_id = params[:group_id] || @actor.group_id
    @actor.stat0 = params[:stat0] || @actor.stat0
    @actor.stat1 = params[:stat1] || @actor.stat1
    @actor.stat2 = params[:stat2] || @actor.stat2
    @actor.stat3 = params[:stat3] || @actor.stat3
    @actor.stat4 = params[:stat4] || @actor.stat4
    @actor.stat5 = params[:stat5] || @actor.stat5
    @actor.stat6 = params[:stat6] || @actor.stat6
    @actor.stat7 = params[:stat7] || @actor.stat7
    @actor.stat8 = params[:stat8] || @actor.stat8
    @actor.stat9 = params[:stat9] || @actor.stat9
    if @actor.save
      render "show.json.jb", status: :ok
    else
      render json: { errors: @actor.errors.full_messages }, status: :bad_request
    end
  end
  def destroy
    Actor.find(params[:id]).destroy()
    render json: nil, status: 204
  end
end
