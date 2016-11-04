class MessagesController < ApplicationController
  before_action :find_messages, only: [:show, :edit, :update, :destroy]
  def index
    @messages = Message.all.order('created_at DESC')
  end

  def show
    
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(messages_params)
    @message.user = current_user
    if @message.save
      redirect_to root_path
    else
      render 'new'
    end

  end

  def edit
    
  end

  def update
    if  @message.update(messages_params)
      redirect_to  @message
    else 
      render 'edit'
    end
  end

  def destroy
    @message.destroy
    redirect_to root_path
  end

  private 
  def find_messages
    @message = Message.find(params[:id])
  end

  def messages_params
    params.require(:message).permit(:title, :description)
  end
end
