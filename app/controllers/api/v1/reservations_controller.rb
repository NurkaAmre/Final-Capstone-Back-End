class ReservationsController < ApplicationController
  def destroy
    @reservation = Reservation.find_by(id: params[:id])
    if @reservation
      @reservation.destroy
      render json: { message: 'Reservation is sucessfully deleted' },
             status: :ok
    else
      render json: { message: 'Error Found during Reservation' }, status: :not_found
    end
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.valid?
      @reservation.save
      render json: { message: 'Reservation has been created successfully!' }, status: :created
    else
      render json: { message: 'Reservation could not be created.' }, status: :not_acceptable
    end
  end

  def reservation_params
    params.require(:reservation).permit(:id, :user_id, :book_id, :city, :date_of_booking, :date_of_delivery)
  end
end
