class CarPolicy < ApplicationPolicy
attr_reader :user, :car
  def initialize(user, car)
    @user = user
    @car = car
  end
  def create?
    user
  end
  def update?
    user
  end
  def destroy?
    user
  end
end
