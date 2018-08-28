class SessionsController < ApplicationController
  def new
  end
  def create

    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      if user.role == 'coordinator'
        redirect_to universities_url
      elsif user.role == 'expert'
        redirect_to specialities_url

      elsif user.role == 'atameken'
        redirect_to panel_url
      end
    else
      render 'new'
    end
  end

  def destroy
  	log_out
    redirect_to root_url
  end
end
