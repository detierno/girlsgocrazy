class MessagesController < ApplicationController
  before_filter :load_topic

  def index
    @messages = Message.all
    respond_with(@messages)
  end

  def show
    @message = Message.find(params[:id])
    respond_with(@message)
  end

  def new
    @message = Message.new
    respond_with(@message)
  end

  def edit
    @message = Message.find(params[:id])
  end

  def create
    @message = @topic.messages.new(params[:message])
    @message.user = current_user
    @message.save
    respond_with(@message, location: topic_path(@topic))
  end

  def update
    @message = Message.find(params[:id])
    @message.update_attributes(params[:message])
    respond_with(@message)
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    respond_with(@message)
  end

private
  def load_topic
    @topic = Topic.find(params[:topic_id])
  end

end
