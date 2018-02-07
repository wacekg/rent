class BookingsController < ApplicationController
  before_action :set_booking, except: [:index, :new, :create]
  def index
    @bookings = Booking.all.order(started_at: :desc)
  end
  def new
    @booking = Booking.new
  end
  def create
    @booking = Booking.create(booking_params)
    render 'bookings/show'
  end
  def edit
  end
  def update
    if @booking.car.access
      @booking.update_attributes(booking_params)
    end
    # binding.pry
    render 'bookings/edit'
  end
  def show
  end
  def destroy
    @booking.destroy
    redirect_to action: "index"
  end

  private
  def booking_params
    params.require(:booking).permit(:last_name, :first_name, :email, :address, :phone, :started_at,:ended_at, :car_id, :approved)
  end
  def set_booking
    @booking = Booking.find(params[:id])
  end
end
