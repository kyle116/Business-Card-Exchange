class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:login][:email])
    if @user && @user.authenticate(params[:login][:password])
      #generate a cookie for the user
      #redirect somewhere
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      #redirect to login page
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
