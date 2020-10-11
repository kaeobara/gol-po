class MessagesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @message = Message.new
    @golf = Golf.find(params[:golf_id])
    @messages = @golf.messages.includes(:user)
  end

  def create
    @golf = Golf.find(params[:golf_id])
    @message = @golf.messages.new(message_params)
    if @message.save
      redirect_to golf_messages_path(@golf)
    else
      @messages = @golf.messages.includes(:user)
      render :index
    end
  end


  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id, golf_id: params[:golf_id])
  end
end
