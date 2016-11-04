class MessagesController < ApplicationController
  def index
    @messages = Message.all.order('created_at DESC')
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(messages_params)
    if @message.save
      redirect_to root_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def messages_params
    params.require(:message).permit(:title, :description)
  end
end
