class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in, :authorize

  def current_user
    # return whatever the value of @current_user is. If it doesn't have a value, set it to whatever we get from DB, but only if they're logged in.
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in
    !!current_user
  end

  def authorize
    redirect_to login_path unless logged_in
  end
end
