class BookingsController < ApplicationController
  def index
    @bookings = Booking.all.order(mark: :desc)
  end
end
