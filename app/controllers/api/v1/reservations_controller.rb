class Api::V1::ReservationsController < ApplicationController

  def index
    @reservations = Reservation.includes(:book).where('user_id = ?', current_user)

    render json: @reservations
  end

  def destroy
    @reservation.destroy
  end

   def create
    @reservation = Reservation.new(reservation_params)
    @reservation.update(user: current_user, book: Book.find(params[:book_id]))

    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:id, :user_id, :book_id, :city, :date_of_booking, :date_of_delivery)
  end
end
