class Api::ImagesController < ApplicationController
  def create
    image = Image.new(
      image_url: params[:image_url],
      actor_id: params[:actor_id],
      group_id: params[:group_id],
      event_id: params[:event_id],
      location_id: params[:location_id],
    )
    if image.save
      render json: {message: "image uploaded successfully"}, status: :created
    else
      render json: { errors: image.errors.full_messages }, status: :bad_request
    end
  end
  def destroy
    Image.find(params[:id]).destroy()
  end
end
