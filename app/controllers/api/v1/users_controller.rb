class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @new_user = User.new(
      user_name: params[:user_name]
    )

    if @new_user.save
      @resp = { id: @new_user.id, name: @new_user.user_name }
      render json: @resp
      response.status = 200
    else
      render json: 'Failed!'
      response.status = 400
    end
  end

  def show
    if User.exists?(user_name: params[:user_name])
      @user = User.find_by(user_name: params[:user_name])
      @resp = { id: @user.id, name: @user.user_name }
      render json: @resp, status: :ok
    else
      render json: 'User not found!', status: :not_found
    end
  end
end
