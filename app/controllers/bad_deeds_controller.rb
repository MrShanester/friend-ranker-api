class BadDeedsController < ApplicationController
  def index
    deed = BadDeed.all
    render json: deed.as_json
  end

  def show
    deed = BadDeed.find_by id: params[:id]
    render json: deed.as_json
  end

  def create
    deed = BadDeed.new(
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
    deed = BadDeed.find_by id: params[:id]
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
    deed = BadDeed.find_by id: params[:id]
    deed.delete
    render json: {message: "Bad Deed deleted"}
  end
end
