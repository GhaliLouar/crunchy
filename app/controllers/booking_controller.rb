class BookingsController < ApplicationController
  before_action :set_burger, only: [:create]

  def create
    @booking = Booking.new(params_booking)
    @booking.burger = @burger
    @booking.user = current_user
    if @booking.save!
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  private

  def set_burger
    @burger = Burger.find(params[:burger_id])
  end

  def params_booking
    params.require(:booking).permit(:startbook_time, :endbook_time)
  end
end
