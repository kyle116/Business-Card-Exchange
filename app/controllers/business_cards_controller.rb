class BusinessCardsController < ApplicationController
  def destroy
    @business_card = BusinessCard.find params[:id]
    @business_card.destroy
    redirect_to user_path current_user
  end

  def create
    @user = User.find params[:id]
    @business_card = BusinessCard.new
    @business_card.contact_id = @user.id
    @business_card.user_id = session[:user_id]
    @business_card.save
    redirect_to user_path @user
  end

  def edit
  end

  def index
  end

  def new
  end

  def show
  end

  def update
  end
end
