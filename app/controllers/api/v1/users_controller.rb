class UsersController < ApplicationController
  def login
    @username = user_params[:user_name]
    @user = User.find_by(username: @user_name)
    if @user
      render json: { message: 'User Matched!', logged_in: true, reservations: @user.reservations, user: @user },
             status: :ok
    else
      render json: { message: 'User Not Matched!', logged_in: false }, status: :not_found
    end
  end

  def signup
    @username = user_params[:user_name]
    @user = User.new(username: @user_name)
    if @user.valid?
      @user.save
      render json: { message: 'User has been created sucessfully!', logged_in: true, user: @user }, status: :created
    else
      render json: { message: 'User could not be created!', logged_in: false }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name)
  end
end
