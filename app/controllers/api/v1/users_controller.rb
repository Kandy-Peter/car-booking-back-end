class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: { status: 'SUCCESS', message: 'Users Loaded Successfully', data: @users }, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: { status: 'SUCCESS', message: 'User Created Successfully', data: @user }, status: :ok
    else
      render json: { status: 'ERROR', massage: 'Reservation Not saved' },
             status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:id, :name, :email, :password)
  end
end
