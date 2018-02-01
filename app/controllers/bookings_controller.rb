class BookingsController < ApplicationController
  before_action :set_booking, except: [:index, :new, :create]
  def index
    @bookings = Booking.all.order(mark: :desc)
  end
  def new
    @booking = Booking.new
  end
  def create
    @booking = Booking.create(booking_params)
    render 'bookings/show'
  end
  def new
  end
  def edit
  end
  def show
  end
  def destory
  end

  private
  def booking_params
    params.require(:booking).permit(:last_name, :first_name, :email, :phone, :started_at,:ended_at, car_id)
  end
  def set_booking
    @booking = Booking.find(params[:id])
  end
end
