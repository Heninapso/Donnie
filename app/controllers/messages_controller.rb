class MessagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save?
      redirect_to root_path
    else
      render 'new'
    end
  end

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end

end
