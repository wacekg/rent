class CarPolicy < ApplicationPolicy
attr_reader :user, :car

def initialize(user, car)
  @user = user
  @car = car
end

def update?
  user.admin? or not car.published?
end
end
