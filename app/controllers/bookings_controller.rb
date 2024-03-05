class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to root_path, notice: "Booking successfully created."
    else
      render :new, status: unprocessable_entity
    end
  end

  def show
    @bookings = Booking.all
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.delete
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, )
  end
end
