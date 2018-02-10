class BookingPolicy < ApplicationPolicy
attr_reader :user, :booking
  def initialize(user, booking)
    @user = user
    @booking = booking
  end
  def update?
    user
  end
  def destroy?
    user
  end
end
