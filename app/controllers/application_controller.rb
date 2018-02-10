class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :store_user_location!, if: :storable_location?
  # before_action :authenticate_user!
  include Pundit

  private
  def storable_location?
    binding.pry
    request.get? && is_navigational_format? && !devise_controller?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end
  def after_sign_out_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || super
  end
end
