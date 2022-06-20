class Api::V1::ReservationController < ApplicationController
  def index
    reservation = Reservation.order('created_at DESC')
    render json: { status: 'SUCCESS', massage: 'Loaded Reservations', data: reservation }, status: :ok
  end
end
