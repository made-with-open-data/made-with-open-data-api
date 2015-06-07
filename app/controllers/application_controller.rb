class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def user_for_paper_trail
    current_user.try(:id) || 'Unknown user'
  end
end
