class UsersController < ApplicationController
  before_action :authorize, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show 
    @user = User.find params[:id]
    @note = Note.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params


    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path @user.id

    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update(user_params)
    redirect_to user_path @user
  end

  def destroy
    @user = User.find params[:id]
    if @user.id == current_user.id
      @user.destroy
      session[:user_id] = nil
      redirect_to users_path
    else
      redirect_to users_path
    end
  end

  def all
    @users = User.all
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :name, :job_title, :phone_number, :website, :address, :company_name)
    end

end
