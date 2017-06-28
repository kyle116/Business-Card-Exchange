class BusinessCardsController < ApplicationController
  def destroy
    @business_card = BusinessCard.find params[:id]
    @business_card.destroy
    redirect_to user_path
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
