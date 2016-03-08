class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery

  before_action :set_current_user

  private

  def set_current_user
    @current_user = User.find(1)
  end

  protect_from_forgery with: :exception

end
