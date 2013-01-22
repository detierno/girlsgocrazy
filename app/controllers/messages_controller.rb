class MessagesController < ApplicationController
  before_filter :load_assets

  def index
    @messages = @topic.messages.all
    respond_with(@messages)
  end

  def show
    @message = @topic.messages.find(params[:id])
    respond_with(@message)
  end

  def new
    @message = @topic.messages.new
    respond_with(@message)
  end

  def edit
    @message = @topic.messages.find(params[:id])
  end

  def create
    @message = @topic.messages.new(params[:message])
    @message.user = current_user
    @message.save
    respond_with(@message, location: event_topic_path(@event, @topic))
  end

  def update
    @message = @topic.messages.find(params[:id])
    @message.update_attributes(params[:message])
    respond_with(@message, location: event_topic_path(@event, @topic))
  end

  def destroy
    @message = @topic.messages.find(params[:id])
    @message.destroy
    respond_with(@message, location: event_topic_path(@event, @topic))
  end

private
  def load_assets
    @event = Event.find(params[:event_id])
    @topic = @event.topics.find(params[:topic_id])
  end

end
