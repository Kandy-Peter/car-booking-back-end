class Api::V1::ReservationController < ApplicationController
  def index
    reservations = Reservation.order('created_at DESC')
    render json: { status: 'SUCCESS', massage: 'Loaded Reservations', data: reservations }, status: :ok
  end

  def show
    reservition = Reservation.find_by_id(params[:id])
    render json: { status: 'SUCCESS', massage: 'Loaded Reservation', data: reservition }, status: :ok
  end

  def create
    reservition = Reservation.new(reservation_params)
    if reservition.save
      render json: { status: 'SUCCESS', massage: 'Saved Reservation', data: reservition }, status: :ok
    else
      render json: { status: 'ERROR', massage: 'Reservation Not saved', data: reservition.errors },
             status: :unprocessable_entity
    end
  end

  def destroy
    reservition = Reservation.find_by_id(params[:id])
    reservition.destroy
    render json: { status: 'SUCCESS', massage: 'Delete Reservation', data: reservition }, status: :ok
  end

  def update
    reservition = Reservation.find(params[:id])
    if reservition.update(reservation_params)
      render json: { status: 'SUCCESS', massage: 'Updated Reservation', data: reservition }, status: :ok
    else
      render json: { status: 'ERROR', massage: 'Reservation Not Updated', data: reservition.errors },
             status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require('reservation').permit(:date, :city, :user_id, :car_id)
  end
end
