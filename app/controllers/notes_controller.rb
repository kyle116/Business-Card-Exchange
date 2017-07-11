class NotesController < ApplicationController
  def create
    @user = User.find params[:id]
    @note = Note.new({body: params[:note][:body]})
    @note.business_card_id = params[:note][:business_card_id]
    @note.save
    redirect_to user_path
  end

  def destroy
    @note = Note.find params[:note_id]
    @note.destroy
    redirect_to user_path
  end

  def edit
    @note = Note.find params[:edit]
  end

  def index
  end

  def new
  end

  def show
  end

  def update
    @bc = BusinessCard.find params[:note][:business_card_id]
    @bc.note.update({body: params[:note][:body]})

    redirect_to user_path params[:id]
  end
end
