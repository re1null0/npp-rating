class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def University_find(key)
  	@uni = University.new()
  	@uni = University.where(["key = ?", k]).first
  	return @uni
  end

end
