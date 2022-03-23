class FriendsController < ApplicationController
  def index
    friends = Friend.all
    render json: {message: "Hi Friends!", friend: friends.as_json}
  end

  def show
    friend = Friend.find_by id: params[:id]
    render json: friend.as_json
  end

  def create
    friend = Friend.new(
      name: params[:name],
      details: params[:details],
      points: params[:points],
      image_url: params[:image_url]
    )
    if friend.save
      render json: friend.as_json
    else
      render json: {error: friend.errors.full_messages}
    end
  end

  def update
    friend = Friend.find_by id: params[:id]
    friend.name = params[:name] || friend.name
    friend.details = params[:details] || friend.details
    friend.points = params[:points] || friend.points
    friend.image_url = params[:image_url] || friend.image_url
    if friend.save
      render json: friend.as_json
    else
      render json: {error: friend.errors.full_messages}
    end
  end

  def destroy
    friend = Friend.find_by id: params[:id]
    friend.delete
    render json: {message: "Friend deleted"}
  end
end
