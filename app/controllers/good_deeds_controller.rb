class GoodDeedsController < ApplicationController
  def index
    good_deed = GoodDeed.all
    render json: good_deed.as_json
  end

  def show
    deed = GoodDeed.find_by id: params[:id]
    render json: deed.as_json
  end

  def create
    deed = GoodDeed.new(
      title: params[:title],
      description: params[:description],
      value: params[:value],
      friend_id: params[:friend_id],
      image_url: params[:image_url]
    )
    if deed.save
      render json: deed.as_json
    else
      render json: {error: deed.errors.full_messages}
    end
  end

  def update
    deed = GoodDeed.find_by id: params[:id]
    deed.title = params[:title] || deed.title
    deed.description = params[:description] || deed.description
    deed.value = params[:value] || deed.value
    deed.friend_id = params[:friend_id] || deed.friend_id
    deed.image_url = params[:image_url] || deed.image_url
    if deed.save
      render json: deed.as_json
    else
      render json: {error: deed.errors.full_messages}
    end
  end

  def destroy
    deed = GoodDeed.find_by id: params[:id]
    deed.delete
    render json: {message: "Good Deed deleted"}
  end
end
