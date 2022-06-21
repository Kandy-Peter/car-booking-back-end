class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :ok
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end
