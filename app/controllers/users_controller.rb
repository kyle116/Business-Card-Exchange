class UsersController < ApplicationController
  before_action :authorize, only: [:show, :edit, :update, :destroy]
  def index # welcome page
    @users = User.all
  end

  def show # the user profile page that has all the business cards
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    # @business_card = BusinessCard.new bc_params

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
    # @user = User.find params[:id]
    # @user.name = params[:user][:name]
    # @user.job_title = params[:user][:job_title]
    # @user.phone_number = params[:user][:phone_number]
    # @user.email = params[:user][:email]
    # @user.website = params[:user][:website]
    # @user.address = params[:user][:address]
    # @user.company_name = params[:user][:company_name]
    # @user.password = params[:user][:password]
    redirect_to user_path User.find params[:id]
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :name, :job_title, :phone_number, :website, :address, :company_name)
    end

end
